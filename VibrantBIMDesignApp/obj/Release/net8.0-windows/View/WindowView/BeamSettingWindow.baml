   M S B A M L   `   `   `  ���� N  JVibrantBIMDesignApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullY1clr-namespace:VibrantBIMDesignApp.View.WindowView#VibrantBIMDesignApp.View.WindowView  b ^PresentationFramework.Aero2, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35hKclr-namespace:Microsoft.Windows.Themes;assembly=PresentationFramework.Aero2Microsoft.Windows.Themes ;    5VibrantBIMDesignApp.View.WindowView.BeamSettingWindow   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35` \RibbonControlsLibrary, Version=4.0.0.11019, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     Clocal1clr-namespace:VibrantBIMDesignApp.View.WindowView     c _System.Windows.Interactivity, Version=4.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  WthemeKclr-namespace:Microsoft.Windows.Themes;assembly=PresentationFramework.Aero2    � Title$  Beam Setting ��$
��auto��$
��auto�� � WindowStartupLocation$ CenterScreen=� � 
ResizeMode$ NoResize=� � SizeToContent$ WidthAndHeight=� � 	Resources  �� MergedDictionaries �� Source��  �� $_ Ypack://application:,,,/VibrantBIMDesignApp;component/Resource/Dictionary/StyleWindow.xaml?�%    .���  � RowDefinitions �� $	��260 ��� $��40 �.+���    Primary GroupBox#��[  $��0��$��2��$��5q�.����   Primary TextBlock#��[ $��10(�$��Right=�$��Bottom=�$��5q�Đơn vị : Mpa, mm�� $��Center=�$��1�� �� Orientation$ 
Horizontal=�.+��� $��
10,0,10,10q�$��80��  Secondary Button#��[ .��OK�� $��
10,0,10,10q�$��80��#��[ .��Cancel�� $��
10,10,10,5q�$��0��.@��� $��Vật liệu��  TabItemStyle#��[ .��� $��Center=�$��Center=�$	��600��$
��auto��	 � ColumnDefinitions	 �� �� �� .+��� $��0��$��
10,10,10,0q�$��	Bê tông��$��14(�.��� 	 �� $	��100 ���  �� $��30 ��� $��30 ��� $��30 ��� $��30 ��� $��30 �.+��� $��0��#��[ Cấp độ bền�� $��1��#��[ �� $�R�� �� $�b��
 �� BaselineAlignment$
 	Subscript=�$��10(��� $��2��#��[ �� $�R�� �� $�bt��$
 	Subscript=�$��10(��� $��3��#��[ E�� $��4��#��[ �� $�γ��$
 Superscript=� �� $�b��$
 Center=�$��10(��� $��1��$��0��  Primary Combobox#��[ �� $��1��$��1��  Primary TextBox#��[ �� $��1��$��2��#��[ �� $��1��$��3��#��[ �� $��1��$��4��#��[ ��   GroupBoxStyle1#��[ $��1��$��
10,10,10,0q�$��Thép chủ��$��14(�.��� 	 �� $	��100 ���  �� $��30 ��� $��30 ��� $��30 ��� $��30 ��� $��30 ��� $��30 �.+��� $��0��#��[ Cấp độ bền�� $��1��#��[ �� $�R�� �� $	�s,n��$
 	Subscript=�$��10(��� $��2��#��[ �� $�R�� �� $�sc��$
 	Subscript=�$��10(��� $��3��#��[ �� $�R�� �� $�s��$
 	Subscript=�$��10(��� $��4��#��[ E�� $��5��#��[ �� $�γ��$
 Superscript=� �� $�b��$
 Center=�$��10(��� $��1��$��0��#��[ �� $��1��$��1��#��[ �� $��Tính toán��#��[ $��Center=�$��Stretch=�.��� �� $��Thiết kế tự động��#��[ .��� $
��auto��	 �� $
��auto ��� �� $
��auto ���  �� $��30 ��� $��30 ��� $��30 ��� $��30 ��� $��30 ��� $��30 ��� $��30 �.+��� $��Đặt tên PX/PY :��$��0��$��Center=�#��[ �� $#��Đường kính thép chủ :��$��1��$��Center=�#��[ �� $"��Đường kính thép đai :��$��2��$��Center=�#��[ �� $.��(Khoảng cách thép đai tự động :��$��3��$��Center=�#��[ �� $2��,Khoảng cách thông thủy tối thiểu :��$��4��$��Center=�#��[ �� $-��'Hàm lượng thép tối thiểu (%) :��$��5��$��Center=�#��[ �� $!��Hệ số an toàn (Mu/M) :��$��6��$��Center=�#��[ �� $��10,0,0,0q�$��0��$��1��$��3��$ 
Horizontal=�.+��� $��75��#��[ .��D�� $��5q�$��Center=�-�� $��75��#��[ .��1�� $��5q�$��Center=�/�� $��75��#��[ .��D�� $��5q�$��Center=�-�� $��75��#��[ .��1�� $��10,0,0,0q�$��1��$��1��$��3��$ 
Horizontal=�.+��� #��[ $��75���� $��5q�$��Center=�-�� #��[ $��75���� $��10,0,0,0q�$��2��$��1��$��3��$ 
Horizontal=�.+��� $��75��#��[ .��6�� $��5q�$��Center=�-�� $��75��#��[ .��8�� $��5q�$��Center=�-�� $��75��#��[ .��10�� $��10,0,0,0q�$��3��$��1��$��3��$ 
Horizontal=�.+��� $��75��#��[ .��100�� $��5q�$��Center=�-�� $��75��#��[ .��150�� $��5q�$��Center=�-�� $��75��#��[ .��200�� $��10,0,0,0q�$��4��$��1��$��3��$ 
Horizontal=�.+��� $��75��#��[ .��40�� $��5q�$��Center=�#��[ ,*Đặt thép giá khi chiều cao dầm >=�� $��75��#��[ .��700�� $��10,0,0,0q�$��5��$��1��$��3��$ 
Horizontal=�.+��� $��75��#��[ .��0.1�� $��5q�$��Center=�#��[ '%Cắt thép khi chiều dài dầm >=�� $��75��#��[ .��2500�� $��10,0,0,0q�$��6��$��1��$��3��$ 
Horizontal=�.+��� $��75��#��[ .��1.1�� $��5q�$��Center=�#��[ Lớp bê tông bảo vệ�� $��75��#��[ .��25