   M S B A M L   `   `   `  ����	  Chess    Chess.Options   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	     � Title$  Options��5   	   $	��400��6   $	��350��6&    � WindowStartupLocation$ CenterOwner=�62    � 
ResizeMode$ NoResize=�6V    � ShowInTaskbar .  .��5      � .+�5   
   �� -   5        $��themeBox��5      $
��Left=�6#   $��25��6>   $��	36,40,0,0q�6J   $	��Top=�6]   $	��120��6u   6�   �� 5   
   $��Choose Theme��6   $
��Left=�6'   $��20��6B   $��	36,20,0,0q�6N   $	��Top=�6a   $	��120��6y   $��0q�6�   �� 5   
   $��Preview��6   $��Right=�6"   $��20��6>   $��	0,20,36,0q�6J   $	��Top=�6]   $��80��6u   $��0q�6�   �� 5	   
   -   5        $��
previewBox��5	      $��80��6"   $��	0,40,36,0q�6.   $	��Top=�6A   $��Right=�6Y   $��80��6u   �� 5
   
   -   5         ��Name$ okBtn��5
      $��OK��6    $
��Left=�6-   $��	36,0,0,36q�6H   $	��104��6[    �� 	IsDefault . $��30��6�   $��Bottom=�6�   �� 5   
   -   5        $ 	cancelBtn��5      $��Cancel��6$   $��30��65   $��	0,0,36,36q�6A   $��Bottom=�6T   $��Right=�6o   $	��108��6�    �� IsCancel . 6�   �� 5   
   -   5         ��Name$ 	rotateBtn��5      $��Rotate Board��6&   $��20��6=   $��
36,160,0,0q�6I   $	��Top=�6]    d� 	IsChecked$
 TrueY�6u   $
��Left=�6�   $	��120��6�   �� 5   
   -   5        $ lastMoveBtn��5      $��Show Last Move��6(   $
��Left=�6A   $��20��6\   $��
36,190,0,0q�6h   $	��Top=�6|   $	��120��6�   $
 TrueY�6�   �� 5   
   -   5        $ saveGameBtn��5      $��Save Game on Exit��6(   $
��Left=�6D   $��20��6_   $��
36,220,0,0q�6k   $	��Top=�6   $	��120��6�   $
 TrueY�6�   �� 5   
   $��Rotation Duration��6   $��200,160,0,0q�6,   $	��108��6A   $��20��6M   $��0q�6Y   $
��Left=�6e   $	��Top=�6�   �� 5   
   -   5        	 ��Name$	 durationSlider��5      
 � Maximum$
 5Q�6)    � Minimum$ 0Q�65    �� TickPlacement$ BottomRight=�6A   $��200,190,0,0q�5      $
��Left=�6&   $	��108��6A   $��25��6M   $	��Top=�6Y   �� 5   
    �� ContentStringFormat$ {0:0.0} seconds��6K   $��200,220,0,0q�5      $
��Left=�6%   $	��108��6@   $��20��6L   $��0q�6X   $	��Top=�6d   ��5      ��  �� ElementName$ durationSlider�� �� Path$ Value�5   d   �� 5   
   
���   �$��1q�6%   $	��130��69   $��
10,10,10,0q�6F   $	��Top=�6Z   5      5      