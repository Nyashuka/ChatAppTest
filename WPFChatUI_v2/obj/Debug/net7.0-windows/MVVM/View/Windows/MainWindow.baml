   M S B A M L   `   `   `  ����G  CWPFChatUI_v2, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:WPFChatUI_v2WPFChatUI_v2  5   	   I)clr-namespace:WPFChatUI_v2.MVVM.ViewModelWPFChatUI_v2.MVVM.ViewModel  5   	   Y1clr-namespace:WPFChatUI_v2.MVVM.View.UserControls#WPFChatUI_v2.MVVM.View.UserControls  5   	       WPFChatUI_v2.MainWindow   5   	   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ,localclr-namespace:WPFChatUI_v2     5   	   8vm)clr-namespace:WPFChatUI_v2.MVVM.ViewModel     5   	   @uc1clr-namespace:WPFChatUI_v2.MVVM.View.UserControls     5   	     � Title$  
MainWindow��5
   	   $	��720��6   $
��1280��6)    � AllowsTransparency$
 True��5   	   
������  � 
ResizeMode$ CanResizeWithGrip=�5   	    � WindowStyle$
 None=�5   	    � WindowStartupLocation$ CenterScreen=�5   	    � DataContext 5      5   /WPFChatUI_v2.MVVM.ViewModel.MainWindowViewModel  5   
   .��5      ��  �� CornerRadius$ 15��6   ���#0B0B11._�5   
   � 
������  � RowDefinitions 5      �� 5      $
��40px �6    �� 5      .+�5      �� -   5        $��0��5      ���#2B3252$ 	15 15 0 0��67   ._�5      � .+�5      �� $��Very original messenger��6   
�������$��Center=�6Q   $��10 0 0 0q�6l   $��20(�5      �� 5      $��Right=�6!    �� Orientation$ 
Horizontal=�6=   .+�5       �� -   5        $	��−��5    !      AppStateButton#��[  6-   6U   �� 5!      -   5        $	��▢��5!   !   #��[  6-   6U   �� 5"      -   5        $��X��5"   !   #��[  6-   6U   5#      5$      5%      � 5'      $��1��6   	 � ColumnDefinitions	 5(      �� 5)      $
��50px �6'   �� 5*      $��350px �6'   �� 5+      .+�5.      �� $��0��6   $��0 0 3 0q�5/      ���#2B325250      �� 51      $��1��6   $��0 0 3 0q�52      ���#2B3252._�53      �  54      �� 55      $
��70px �6,   �� 56      .+�59      �� $��0��6!   ���#1B1A22���#2B3252$��0 0 0 3q�5;   7   ._�5<      �� $��300px��6%   $
��40px��63   ���#1B1A22���#2B3252$��3q�5>   ;   $ 10��6O   ._�5?   "   �� $��Search��6(   $��15(�5@   (   
�������$��Center=�5A   >   $��20 0 0 0q�5B   (   5C      5D      �� 5G      $��1��6#   $��Stretch=�5H   #   
������ $��0q�5J   #     ChatCard#��[ 5K   #   $��Disabled=�5L   #   $��Hidden=�5M   #   ��5G   0   �� *Chats+
 � 	Resources
 5O       �� 
TargetType  ChatsListViewScrollViewer �� BasedOn��%0   '��       7  �� 5P   "   " ��6(   8   6B   5Q      5S      5U      5V      �� 5W      $��2��6   $��0 0 3 0q�5X      ���#2B3252._�5Y      �  5Z      �� 5[      $
��70px �6,   �� 5\      �� 5]      $
��70px �6,   .+�5`      �� $��0��6!   ���#1B1A22���#2B3252$��0 0 0 3q�5b   7   ._�5c      � .+�5d   "   �� $ 
Horizontal=�6-   $��20 0 0 0q�6F   .+�5e   &   A� $��55��6.   $��55��69   ��5f   *   �� 5g   .    �� ImageSource$R Lhttps://i.pinimg.com/originals/e7/da/8d/e7da8d8b6a269d073efa11108041928d.jpg��69    �� BitmapScalingMode$
 Fant=�5h   1   5j   '   �� 5k   &   .+�5l   *   �� $��Evelin Parker��60   
�������$��Center=�5n   ,   $��SemiBold"�5o   ,   $��20(�5p   ,   $��10 0 0 0q�5q   ,   �� 5r   *   $��Offline��60   
�������$��Center=�5t   ,   $��SemiBold"�5u   ,   $��15(�5v   ,   $��10 0 0 0q�5w   ,   5x   '   5y   #   �� 5{   "   $��40��6)   
������ 
�������$��0q�5|   U   $	��⋮��5}   )   $��25(�65   $��Right=�5~   )      UserAdditionalSettingsButton#��[ 5   )   5�      5�      �� 5�      $��1��6#     MessageItem#��[ 5�   #   
������ $��0q�5�   <   $��Bottom=�5�   #   ��5�   0   �� *
Messages+5�   #   � 5�      $��2��6   	 5�      �� 5�   "   �� 5�   "   $��50 �63   .+�5�      �� $��0��6&   
������ $��50��5�   &     
MessageBox#��[ 5�   &   �� 5�      $��1��6)   $ 
Horizontal=�69   $
��50px��6R   $��Stretch=�6`   .+�5�   "   �� $	��↑��6)   $
��25px��65   $��25(�6B   $��30��6P   $��Bottom=�5�   )   $��0 0 0 2q�6D   
������ 
�������$��0q�5�   )     MessageBoxButton#��[ 5�   )   �� 5�   "   $��>��6)   $
��25px��65   $��25(�6B   $��30��6P   $��Bottom=�5�   )   
������ 
�������$��0q�5�   )   #��[ 5�   )   5�      5�      5�      5�      5�      5�      5�      5�      