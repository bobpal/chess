﻿using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Documents;

namespace Chess
{
    public partial class MainWindow : Window
    {
        private Logic game;
        private Paragraph para;
        public static RoutedCommand newGameCmd = new RoutedCommand();
        public static RoutedCommand undoCmd = new RoutedCommand();
        public static RoutedCommand themeCmd = new RoutedCommand();
        public static RoutedCommand sizeCmd = new RoutedCommand();
        public static RoutedCommand sendCmd = new RoutedCommand();
        
        public MainWindow()
        {
            InitializeComponent();
            para = new Paragraph();
            conversationBox.Document = new FlowDocument(para);
            game = new Logic(this);
            game.createDisplayArray();
            game.initializeDlls();
            newGameCmd.InputGestures.Add(new KeyGesture(Key.F2));
            undoCmd.InputGestures.Add(new KeyGesture(Key.Z, ModifierKeys.Control));
            themeCmd.InputGestures.Add(new KeyGesture(Key.F3));
            sizeCmd.InputGestures.Add(new KeyGesture(Key.F4));
            sendCmd.InputGestures.Add(new KeyGesture(Key.Enter));
            CommandBindings.Add(new CommandBinding(newGameCmd, newGameMenu_Click));
            CommandBindings.Add(new CommandBinding(undoCmd, undoMenu_Click));
            CommandBindings.Add(new CommandBinding(themeCmd, optionMenu_Click));
            CommandBindings.Add(new CommandBinding(sizeCmd, sizeMenu_Click));
            CommandBindings.Add(new CommandBinding(sendCmd, sendBtn_Click));
            this.Show();
            
            if (System.IO.File.Exists(game.filePath))
            {
                game.loadState();
            }

            else
            {
                game.newGame();
            }
        }

        private void newGameMenu_Click(object sender, RoutedEventArgs e)
        {
            game.newGame();
        }

        private void undoMenu_Click(object sender, RoutedEventArgs e)
        {
            if(undoMenu.IsEnabled == true)
            {
                game.undo();
            }
        }

        private void exitMenu_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void optionMenu_Click(object sender, RoutedEventArgs e)
        {
            Options change = new Options(game);
            change.ShowDialog();
        }

        private void sizeMenu_Click(object sender, RoutedEventArgs e)
        {
            this.Height = 721;
            this.Width = 728;
        }

        private void cell_Click(object sender, RoutedEventArgs e)
        {
            Canvas cell = (sender as Canvas);
            int row = Grid.GetRow(cell);
            int col = Grid.GetColumn(cell);
            game.clicker(new Logic.coordinate(col, row));
        }

        private void cell_MouseMove(object sender, RoutedEventArgs e)
        {
            if (game.ready == true)  //if a game is being played
            {
                Canvas cell = (sender as Canvas);
                int row = Grid.GetRow(cell);
                int col = Grid.GetColumn(cell);

                if (cell.Background == Brushes.LawnGreen)
                {
                    
                    cell.Cursor = Cursors.Hand;
                }

                else if (game.pieceArray[col, row].color == game.offensiveTeam)
                {
                    cell.Cursor = Cursors.Hand;
                }

                else if (cell.Background == Brushes.DarkOrange)
                {
                    cell.Cursor = Cursors.Hand;
                }

                else
                {
                    cell.Cursor = Cursors.Arrow;
                }
            }
        }

        private void Board_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            game.saveState();
        }

        private void sendBtn_Click(object sender, RoutedEventArgs e)
        {
            if (inputBox.Text != "Type to send message" && inputBox.Text != "")
            {
                para.Inlines.Add(new Bold(new Run("You: "))
                {
                    Foreground = Brushes.Blue
                });
                para.Inlines.Add(inputBox.Text);
                para.Inlines.Add(new LineBreak());
                this.DataContext = this;
                inputBox.Text = "";
            }
        }

        private void inputBox_GotKeyboardFocus(object sender, KeyboardFocusChangedEventArgs e)
        {
            if (inputBox.Text == "Type to send message")
            {
                inputBox.Text = "";
                inputBox.Foreground = Brushes.Black;
            }
        }

        private void inputBox_LostKeyboardFocus(object sender, KeyboardFocusChangedEventArgs e)
        {
            if (inputBox.Text.Trim().Equals(""))
            {
                inputBox.Foreground = Brushes.Gray;
                inputBox.Text = "Type to send message";
            }
        }
    }
}
