   M S B A M L   `   `   `  ���� W  SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35` \RibbonControlsLibrary, Version=4.0.0.11019, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089   ComboBoxNormalBorderBrush  �� Color ! ComboBoxNormalBackgroundBrush # ComboBoxDisabledForegroundBrush # ComboBoxDisabledBackgroundBrush  ComboBoxDisabledBorderBrush �� 
TargetType   ComboBoxToggleButtonTemplate � ColumnDefinitions �� CornerRadius �� Triggers P� Property P� Value �� 
TargetName �� Property	 �� Value  Primary Combobox
 �� 
TargetType �� 	ClickMode d� 	IsChecked �� Path �� RelativeSource �� Mode J� IsHitTestVisible �� SelectionBoxItem �� SelectionBoxItemTemplate �� 
IsReadOnly �� 
IsReadOnly � AllowsTransparency �� IsDropDownOpen J� SnapsToDevicePixels � ActualWidth �� MaxDropDownHeight-   'System.Windows.Input.KeyboardNavigation    DirectionalNavigation�� H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation       :x,http://schemas.microsoft.com/winfx/2006/xaml      %	  &	        &	      &	 %     &	 5     &	 E     &	 U     7   7  7  7  7  7  7  &	 +    7  7   7  �� $  	LightGray���� $
  #fff���� $
  #888���� $
  #eee���� $
  #888���� " d�.R��  �� �� $��20 �.+��� $��Border��$��2��8��  $ 0��$��
1, 1, 1, 1q�8�� �� $��ButtonBorder��$��1��$��
1, 1, 1, 1q����#444$ 
0, 0, 0, 0��$��
0, 0, 0, 0q�8�� F� $��Arrow��$��1��=����        �    �� � 	= ��[ � z �� � z     � 	=  	= 	$��Center=����#444$��Center=� P�  �@J�IsMouseOver$
 True��. ��� $ ButtonBorder�� � ��
	 �����P�  �@d�	IsChecked$
 TrueY�. ��� $ ButtonBorder�� � ��
	 ������� $ Arrow�� � ��	 �	#FF8D979EP�  � {�$ False��. ��� $ Border��8	   � ���� $ ButtonBorder��8	   � ���� $ ButtonBorder��8	   � ���� 8	   � ���� $ Arrow�� � ��	 �#999�� "
 ��.���  �@J�SnapsToDevicePixels$
	 True����  �@�OverridesDefaultStyle$
	 True����  � ��$
	 Auto=���  � ��$
	 Auto=���  � ��$
	 True����  � ��
	 �   ���  �@�FocusVisualStyle	 Z� ��  � ��$	 Center=���  � ��$
	 Left=���  � ��
	 �������  � ��$	 20����  � ��	 �� " ��.R�� .+�d� $��ToggleButton��$��2��$ Press=�$|�False��8��   �� $ IsDropDownOpen� �� *TemplatedParent+$ TwoWay=��� $��ContentSite��$��5, 3, 23, 3q�$ False��$
��Left=�$��Center=�#��z #��z #��z���� $��PART_EditableTextBox��$��3, 3, 23, 3q�# z $y�Hidden=�
������ $
��Left=�$��Center=�$
|�True��.������ " ��.R��� $��PART_ContentHost��$|�False��.��� $��Popup��$��Bottom=�$|�False��$
 True��#��z $��Slide=�.��� $��DropDown��$
 True��#��z #��z .+��� $��DropDownBorder��
�������$��
0, 1, 0, 0q�$ 0��$��1,1,1,1q�8�� �� $��4q�$
 True��.���� $ 	Contained=� P�  �@��HasItems$ False��. ��� $ DropDownBorder�� � ��$	 95��P�  � {�$ False��. ��� 8	   � ��P�  �@��
IsGrouping$
 True��. ���  � ��$	 False��P�  �@��
IsEditable$
 True��. ���  �@  	IsTabStop$	 False���� $ PART_EditableTextBox�� � y�$	 Visible=��� $ ContentSite�� � y�$	 Hidden=�