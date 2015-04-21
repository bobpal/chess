﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace Chess
{
    public partial class NewGame : Window
    {
        private Logic game;
        private MainWindow tableTop;

        public NewGame(Logic l, MainWindow w)
        {
            InitializeComponent();
            this.game = l;
            this.tableTop = w;
        }

        private void cancelBtn_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void okBtn_Click(object sender, RoutedEventArgs e)
        {
            if (darkBtn.IsChecked == true)
            {
                game.offensiveTeam = "dark";
                game.baseOnBottom = "dark";
                game.opponent = "light";
                game.setBoardForNewGame();
            }
            else
            {
                game.offensiveTeam = "light";
                game.baseOnBottom = "light";
                game.opponent = "dark";
                game.setBoardForNewGame();
            }

            game.onePlayer = onePlayerBtn.IsChecked.Value;
            game.medMode = mediumBtn.IsChecked.Value;
            game.hardMode = hardBtn.IsChecked.Value;
            game.ready = true;
            game.clearToAndFrom();
            game.clearSelectedAndPossible();
            game.movablePieceSelected = false;
            game.history.Clear();

            if (game.onePlayer == true)
            {
                tableTop.rotateMenu.IsEnabled = false;
            }
            else
            {
                tableTop.rotateMenu.IsEnabled = true;
            }

            this.Close();
        }
    }
}