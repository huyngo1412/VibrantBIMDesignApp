   M S B A M L   `   `   `  ����W  SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089   ComboBoxNormalBorderBrush  �� Color ! ComboBoxNormalBackgroundBrush # ComboBoxDisabledForegroundBrush # ComboBoxDisabledBackgroundBrush  ComboBoxDisabledBorderBrush �� 
TargetType   ComboBoxToggleButtonTemplate � ColumnDefinitions �� CornerRadius �� Triggers P� Property P� Value �� 
TargetName �� Property	 �� Value  Primary Combobox
 �� 
TargetType �� 	ClickMode d� 	IsChecked �� Path �� RelativeSource �� Mode J� IsHitTestVisible �� SelectionBoxItem �� SelectionBoxItemTemplate �� 
IsReadOnly �� 
IsReadOnly � AllowsTransparency �� IsDropDownOpen J� SnapsToDevicePixels � ActualWidth �� MaxDropDownHeight-   'System.Windows.Input.KeyboardNavigation    DirectionalNavigation�� 5      F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      :x,http://schemas.microsoft.com/winfx/2006/xaml      5      %w  &	        &	 #     &	 A     &	 _     &	 }     &	 �     7   7  7  7  7  7  7  &	     7  7   7  �� 5      $  	LightGray��68   �� 5      $
  #fff��6<   �� 5      $
  #888��6>   �� 5      $
  #eee��6>   �� 5      $
  #888��6:   �� 5
      " d�6   .R�5   
   �  5      �� 5      �� 5      $��20 �6#   .+�5      �� $��Border��6)   $��2��6   8��  $ 0��5      $��
1, 1, 1, 1q�6    8�� 5      �� 5      $��ButtonBorder��6L   $��1��6   $��
1, 1, 1, 1q�6%   ���#444$ 
0, 0, 0, 0��5      $��
0, 0, 0, 0q�6)   8�� 5      F� 5      $��Arrow��6   $��1��6    =����        �    �� � 	= ��[ � z �� � z     � 	=  	= 	$��Center=�5      ���#444$��Center=�5      5       5   
   P� 5       �@J�IsMouseOver$
 True��67   . �5      �� $ ButtonBorder��65    � ��
	 �����6O   5       P� 5!       �@d�	IsChecked$
 TrueY�68   . �5"      �� $ ButtonBorder��65    � ��
	 �����6O   �� 5#      $ Arrow��6/    � ��	 �	#FF8D979E6B   5$      P� 5%       � {�$ False��65   . �5&      �� $ Border��65   8	   � ��6I   �� 5'      $ ButtonBorder��65   8	   � ��6O   �� 5(      $ ButtonBorder��67   8	   � ��6Q   �� 5)      8	   � ��6;   �� 5*      $ Arrow��6/    � ��	 �#9996B   5+      5-      �� 5/      "
 ��6&   .�50   
   ��  �@J�SnapsToDevicePixels$
	 True��60   �� 51   
    �@�OverridesDefaultStyle$
	 True��62   �� 52   
    � ��$
	 Auto=�6G   �� 53   
    � ��$
	 Auto=�6E   �� 54   
    � ��$
	 True��6:   �� 55   
    � ��
	 �   �63   �� 56   
    �@�FocusVisualStyle	 6-   Z� �� 57   
    � ��$	 Center=�65   �� 58   
    � ��$
	 Left=�67   �� 59   
    � ��
	 �����67   �� 5:   
    � ��$	 20��6#   60   �� 5;   
    � ��	 5<      �� 5=      " ��6"   .R�5>      � .+�5?      d� $��ToggleButton��6'   $��2��6;   $ Press=�5@      $|�False��6#   8��   5A      �� $ IsDropDownOpen� �� *TemplatedParent+$ TwoWay=�5B      �� 5D      $��ContentSite��6+   $��5, 3, 23, 3q�6>   $ False��6S   $
��Left=�5E      $��Center=�6:   #��z 5F      #��z 5G      #��z��5H      �� 5I      $��PART_EditableTextBox��6"   $��3, 3, 23, 3q�6>   # z 5J      $y�Hidden=�5K      
������ $
��Left=�5L      $��Center=�61   $
|�True��5M      .��6(   ��5N      �� 5O   "   " ��62   .R�5P   &   �� $��PART_ContentHost��6-   $|�False��6E   5Q   #   .��5R   0   5S      � 5U      $��Popup��6    $��Bottom=�6-   $|�False��5V      $
 True��6&   #��z 5W      $��Slide=�5X      .��5Y      � $��DropDown��6#   $
 True��63   #��z 5Z      #��z 5[      .+�5\   "   �� $��DropDownBorder��6)   
�������$��
0, 1, 0, 0q�6R   $ 0��5]      $��1,1,1,1q�6*   8�� 5^      �� 5_   "   $��4q�6/   $
 True��6:   .��5`   &   �� $ 	Contained=�65   5a   #   5b      5c      5d       5e      P� 5f       �@��HasItems$ False��6C   . �5g      �� $ DropDownBorder��6K    � ��$	 95��6g   5h      P� 5i       � {�$ False��6A   . �5j      �� 8	   � ��6G   5k      P� 5l       �@��
IsGrouping$
 True��6E   . �5m      ��  � ��$	 False��6N   5n      P� 5o       �@��
IsEditable$
 True��6A   . �5p      ��  �@  	IsTabStop$	 False��6M   �� 5q      $ PART_EditableTextBox��6E    � y�$	 Visible=�6g   �� 5r      $ ContentSite��6E    � y�$	 Hidden=�6^   5s      5u      5w      5x      5|      