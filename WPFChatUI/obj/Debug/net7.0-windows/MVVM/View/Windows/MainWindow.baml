   M S B A M L   `   `   `  ����D  @WPFChatUI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullC&clr-namespace:WPFChatUI.MVVM.ViewModelWPFChatUI.MVVM.ViewModel  5   	   %clr-namespace:WPFChatUI	WPFChatUI  5   	   ,    &WPFChatUI.MVVM.View.Windows.MainWindow   5   	   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   5vm&clr-namespace:WPFChatUI.MVVM.ViewModel     5   	   )localclr-namespace:WPFChatUI     5   	     � Title$  
MainWindow��5	   	   $	��650��6   $
��1200��6)    � WindowStyle$
 None=�5
   	    � 
ResizeMode$ CanResizeWithGrip=�6   ���#36393F � AllowsTransparency$
 True��5       � DataContext 5      2   ,WPFChatUI.MVVM.ViewModel.MainWindowViewModel  5   
   .��5      �  � RowDefinitions 5   
   �� 5      $��25 �6   �� 5       � ColumnDefinitions 5   
   �� 5      $	��200 �6   �� 5      .+�5   
   �� -   5        $��2��5      ���#252525._�5      � .+�5      �� $��:)��6   
�������$��SemiBold"�67   �� 5        �� Orientation$ 
Horizontal=�6   $��Right=�66   .+�5!      �� -   5        $	��−��5!      $��25��6)   
������ $��0q�5"      
�������$
��Bold"�5$      5%      �� 5&      -   5        $	��▢��5&      $��25��6)   
������ $��0q�5'      
�������$
��Bold"�5)      5*      �� 5+      -   5        $��X��5+      $��25��6)   
������ $��0q�5,      
�������$
��Bold"�5.      5/      50      51      52      � 54   
   $��1��6   $��0��6   ���#2F3136 56      �� 57      $��50 �6    �� 58      �� 59      $��60 �6    .+�5<      �� $��0��6   $��	All chats��6!   $��Center=�5=      $��Medium"�5>      
�������$��8 0 0 0 q�5@      �� 5B      $��1��6   
������ $��0q�5D         ChatCard#��[  5E      ��5B   $   �� *Chats+5E      �� 5G      $��2��6   $ 
Horizontal=�6&   ���#292B2F.+�5I      A� $��50��6   $��50��6%   $��10 0 0 0q�61   ��5J      �� 5K       �� ImageSource$� � https://www.aidemos.info/wp-content/uploads/2023/05/Cute_girl_avatar_Graphic_illustration_abstract_memphis_9bf1da51-5143-47ea-a89c-554ff19f9d65-771x1024.webp��6%   	 �� BitmapScalingMode$
	 Fant=�5L   1   5N      �� 5P      $ Vertical=�6   $��Center=�5Q      .+�5R      �� $��Nyashuka��6   
�������$��SemiBold"�5T      $��15(�5U      �� 5V      $��Online��6   
�������$��Medium"�5X      $��10(�5Y      5Z      5[      5\      � 5]   
   $��1��6   $��1��6    5^      �� 5_      $��70 �6    �� 5`      �� 5a      $��70 �6    .+�5d      �� ���#2f3136$��0 0 0 3q�6+   ._�5e      �� $ 
Horizontal=�6   $��Center=�66   $��10 0 0 0q�6Q   .+�5f      A� $��55��6   $��55��6)   ��5g      �� 5h      $R Lhttps://i.pinimg.com/originals/e7/da/8d/e7da8d8b6a269d073efa11108041928d.jpg��6)   $
	 Fant=�5i   1   5k      �� 5l      .+�5m      �� $��User 2��6    
�������$��Center=�5o      $��SemiBold"�5p      $��20(�5q      $��10 0 0 0q�5r      �� 5s      $��Online��6    
�������$��Center=�5u      $��SemiBold"�5v      $��15(�5w      $��10 0 0 0q�5x      5y      5{      5}      �� 5�      $��1��6   
������ $��0q�5�        ChatMessageItem#��[ 5�      $��8 0 0 0q�5�      ��5�      �� *SelectedChat.Messages+5�      � 5�      $��2��6    5�      �� 5�      �� 5�      $��50 �6'   .+�5�      �� 
������ $��50��5�        
MessageBox#��[ 5�      5�      5�      5�      5�      