   M S B A M L   `   `   `  ���� @  <Chess, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:ChessChess      Chess.NewGame   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     %Chessclr-namespace:Chess     -     �Name$  NewGameWindow�� � Title$ New Game��$	��335��$	��335�� � 
ResizeMode$ NoResize=� � ShowInTaskbar .   � WindowStartupLocation$ CenterOwner=� � 	Resources    Chess.SliderToString   sliderConverter��%   &	          .��� .+�	� -    	�Name$ onePlayerBtn��$��1 Player vs. Computer��$
��Left=�$��20��$��	15,30,0,0q�$	��Top=�$	��150��$��5,0,0,0q� d� 	IsChecked$
 TrueY�	� -   $ twoPlayerBtn��$��2 Player Local��$
��Left=�$��20��$��	15,55,0,0q�$	��Top=�$	��150��$��5,0,0,0q�	� -   $ 
networkBtn��$��2 Player Online��$
��Left=�$��20��$��	15,80,0,0q�$	��Top=�$	��150��$��5,0,0,0q��� -    ��Name$ horse��$��80��$��	0,22,36,0q�$	��Top=�$��Right=�$��80��$2��,pack://application:,,,/Resources/lKnight.png���� $��1q�$
��Left=�$	��112��$��
14,109,0,0q�$	��Top=�$	��152��
���   ��� -   	 ��Name$	 
Difficulty��$
��Left=�$	��110��$��
15,110,0,0q�$	��Top=�$	��150��#��� ��
 K� ZIndex$
 1��{���  �� ElementName$ onePlayerBtn�� �� Path$ 	IsChecked�.+��� $��
Difficulty��$��20�� �� Left$ 10��
 �� Top$ 10��$	��110��$��0q��� -   $��AI��$��30��$ 10��$ 40��$	��130��
���   � � Maximum$ 5Q� � Minimum$ 1Q� �� TickPlacement$ BottomRight=� �� TickFrequency$ 1Q� �� IsSnapToTickEnabled . �� $��20��$ 10�� �� Bottom$ 10��$	��110��$��0q����� $ AI��$ Value� �� 	Converter# [  �� -   $	 Network��$
��Left=�$	��110��$��
15,110,0,0q�$	��Top=�$	��150��#��� ��
 �� $ 
networkBtn��$ 	IsChecked�.+��� $��	Server IP��$��20��$ 10��$ 10��$	��110��$��0q��� -	    ��Name$ ipBox��$��20��$ 10��$ 30��$	��110��$��0q��� $
��Port��$��20��$ 10��$ 55��$	��110��$��0q��� -
   $ portBox��$��20��$ 10��$ 75��$	��110��$��0q��� -   $	 Color��$	��111��$��
0,110,36,0q�$	��Top=�$��Right=�$	��115��{��� $ onePlayerBtn��$ 	IsChecked�.+�	� -   $ lightBtn��$��Play as light��$��20��$ 10��$ 10��$��95��$
 TrueY�$��4,0,0,0q�	� -   $ darkBtn��$��Play as dark��$��20��$ 10��$ 35��$��95��$��4,0,0,0q��� -    ��Name$ okBtn��$��OK��$��	66,0,0,25q�$��20��$��Bottom=�$
��Left=�$��80�� �� 	IsDefault . �� -   $ 	cancelBtn��$��Cancel��$��	0,0,71,25q�$��Right=�$��80��$��20��$��Bottom=� �� IsCancel . 