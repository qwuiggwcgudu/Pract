   M S B A M L   `   `   `  ����B  >WpfApp1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:WpfApp1WpfApp1  5   	       WpfApp1.MainWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:WpfApp1     5   	   -   5          � Title$  
MainWindow��5   	   $	��450��6   $	��800��6)   ���	#FF6818BB.��5	      �  � ColumnDefinitions 5
   
   �� 5      �� 5      $	��300 �6   �� 5       � RowDefinitions 5   
   �� 5      $	��190 �6   �� 5      $	��100 �6   �� 5      $��55 �6   �� 5      .+�5   
   �� -   5         ��Name$ LoginBox��5      $��40��6$   $	��300��60   $��Bottom=�6<   $��1��6W   $��0��6g   $��Center=�6t   $��24(�6�   �� 5   
   -   5        $ PassBox��5      $��40��6#   $	��300��6/   $��Bottom=�6;   $��1��6V   $��1��6f   $��Center=�6s   $��24(�6�   G� 5   
   -   5         G�Name$ PassBox2��5      $��40��6(   $	��300��64   $��Bottom=�6@   $��1��6[   $��1��6k   $��Center=�6x   $��24(�6�   �� 5   
   $��а/o.png��6   $��0��6!   $��0��61   $��40��6>   $��Right=�6J   $��Bottom=�6f   �� 5   
   $��а/l.png��6   $��0��6!   $��1��61   $��40��6>   $��Right=�6J   $��Bottom=�6f   �� 5   
   -   5         ��Name$ showBtn��5      $��2��68   $��1��6H   $��40��6U   $
��Left=�6a   $��Bottom=�6|   ���	#FF6818BB$��0q�6�   .��5      �� -   5         ��Name$ image��5   %   $��а/i.png��6   6%   5      �� 5   
   -   5        $ ToWindow1Btn��5      ���	#FF6818BB$Q��Kне зарегистрированы? Зарегистрироваться��6Y   $��2��6�   $��1��6�   $��Bottom=�6�   $��Center=�6�   $	��300��6�   $��15(�6�   $��0q�6�   �� 5   
   -   5        $ AutBtn��5      $��50��66   $	��150��6B   $	��Top=�6N   $��1��6f   $��3��6v   $��Center=�6�   $��7q�6�   $��
Войти��6�   ���	#FF80BB8F$��23(�6�   $��Center=�6�   $��Center=�6  �� 5   
   -	   5        $	 tr3��5      $��0��6   $��1��6,   $	��300��6<   $	��100��6H   ���	#FF6818BB$��Center=�6l   $��0q�6�   $��25(�6�   $��Center=�6�   $	��Top=�6�    �� TextWrapping$
 Wrap=�6�   5       5!      