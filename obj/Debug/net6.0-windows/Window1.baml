   M S B A M L   `   `   `  ����B  >WpfApp1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:WpfApp1WpfApp1  5   	       WpfApp1.Window1   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:WpfApp1     5   	   -   5          � Title$  Window1��5   	   $	��450��6   $	��800��6&   ���	#FF6818BB.��5	      �  � ColumnDefinitions 5
   
   �� 5      �� 5      $	��250 �6   �� 5       � RowDefinitions 5   
   �� 5      $	��130 �6   �� 5      $��70 �6   �� 5      $��70 �6   �� 5      $��70 �6   �� 5      .+�5   
   �� -   5         ��Name$ ToWindow1Btn��5      $��50��6B   $	��150��6N   $	��Top=�6Z   $��2��6r   $��0��6�   $��Center=�6�   $��
Назад��6�   $��7q�6�   ���	#FF80BB8F$��23(�6�   $��Center=�6�   $��Center=�6  �� 5   
   -   5        $ REgBtn��5      $��50��66   $	��220��6B   $��Bottom=�6N   $��1��6i   $��4��6y   $��Center=�6�   $*��$Зарегистрироваться��6�   $��10q�6�   ���	#FF80BB8F$��23(�6�   $��Center=�6�   $��Center=�6  �� 5   
   -   5         ��Name$ LoginBox��5      $��40��6%   $	��250��61   $��Bottom=�6=   $��1��6X   $��0��6h   $��Center=�6u   $��24(�6�   6�   �� 5   
   -   5         ��Name$ 
LoginBoxPH��5      $��Введите логин��6%   $��0��6=   $��1��6J   $	��250��6Z   $��40��6f    J� Opacity$
 0.25Q�6r    J� IsHitTestVisible$ False��6�   
������ $��Bottom=�6�   $��24(�6�   $��Center=�6�   $��Center=�6�   $��Center=�6  �� 5   
   -   5        $ emailBox��5   >   $��40��6P   $	��250��6\   $��Bottom=�6h   $��1��6�   $��1��6�   $��Center=�6�   $��24(�6�   �� 5   
   -   5        $ passBox��5      $��40��6#   $	��250��6/   $��Bottom=�6;   $��1��6V   $��2��6f   $��Center=�6s   $��24(�6�   6�   �� 5   
   -   5        $ passbox2��5      $��40��6%   $	��250��61   $��Bottom=�6=   $��1��6X   $��3��6h   $��Center=�6u   $��24(�6�   6�   �� 5   
   -	   5        $ redline1��5   G   $��1��6   $��1��6   $	��250��6/   $��40��6;   $��3q�6Y   
���  ��$��Bottom=�6   $��Center=�6�   $��24(�6�   �� 5   
   -
   5        $	 tb1��5   �   $��1��6   $��2��6   $	��200��6/   $��70��6;   $��Bottom=�6G   $��Right=�6b   ���	#FF6818BB$��0q�6�   $��18(�6�    �� TextWrapping$
 Wrap=�6�   �� 5   
   -   5        $	 tb2��5   �   $��2��6   $��2��6   $	��200��6/   $��70��6;   $��Bottom=�6G   $��Right=�6b   ���	#FF6818BB$��0q�6�   $��18(�6�   $
 Wrap=�6�   �� 5    
   -   5        $ redline2��5    �   $��2��6   $��1��6   $	��250��6/   $��40��6;   $��Center=�6G   $��Bottom=�6d   $��3q�6�   
���  ��$��24(�6�   �� 5!   
   -   5        $ redline3��5!      $��3��6   $��1��6   $	��250��6/   $��40��6;   $��Bottom=�6G   $��Center=�6b   $��3q�6�   
���  ��$��24(�6�   �� 5"   
   $��а/o.png��6   $��0��6!   $��0��61   $��40��6>   $��Right=�6J   $��Bottom=�6f   �� 5#   
   $��а/p.png��6   $��0��6!   $��1��61   $��40��6>   $��Right=�6J   $��Bottom=�6f   �� 5$   
   $��а/l.png��6   $��0��6!   $��2��61   $��40��6>   $��Right=�6J   $��Bottom=�6f   �� 5%   
   $��а/l.png��6   $��0��6!   $��3��61   $��40��6>   $��Right=�6J   $��Bottom=�6f   �� 5&   
   -   5        $ 
emailBoxPH��5&      $��Введите почту��6%   $��1��6=   $��1��6J   $	��250��6Z   $��40��6f   $
 0.25Q�6r   $ False��6�   
������ $��Bottom=�6�   $��24(�6�   $��Center=�6�   $��Center=�6�   $��Center=�6  �� 5'   
   -   5        $ 	passBoxPH��5'      $!��Введите пароль��6$   $��2��6=   $��1��6J   $	��250��6Z   $��40��6f   $
 0.25Q�6r   $ False��6�   
������ $��Bottom=�6�   $��24(�6�   $��Center=�6�   $��Center=�6�   $��Center=�6  �� 5(   
   -   5        $ 
passpBoxPH��5(      $%��Повторите пароль��6%   $��3��6@   $��1��6M   $	��250��6]   $��40��6i   $
 0.25Q�6u   $ False��6�   
������ $��Bottom=�6�   $��24(�6�   $��Center=�6�   $��Center=�6�   $��Center=�6  5)      5*      