   M S B A M L   `   `   `  ���� N  JVibrantBIMDesignApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:VibrantBIMDesignAppVibrantBIMDesignApp  Q-clr-namespace:VibrantBIMDesignApp.View.UCViewVibrantBIMDesignApp.View.UCView  M+clr-namespace:VibrantBIMDesignApp.LanguagesVibrantBIMDesignApp.Languages  $    VibrantBIMDesignApp.MainWindow   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35` \RibbonControlsLibrary, Version=4.0.0.11019, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     3local!clr-namespace:VibrantBIMDesignApp     <uc-clr-namespace:VibrantBIMDesignApp.View.UCView     @Language+clr-namespace:VibrantBIMDesignApp.Languages     c _System.Windows.Interactivity, Version=4.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  -   $��MainWindowApp��  � WindowStyle$
  None=� � Title$# VibrantBIM Design Application��$	��950��$
��1280�����	#FFEAEAEA � WindowStartupLocation$ CenterScreen=� � 	Resources  �� MergedDictionaries �� Source3  -VibrantBIMDesignApp.Languages.LanguageService   Key��  �� $_ Ypack://application:,,,/VibrantBIMDesignApp;component/Resource/Dictionary/StyleWindow.xaml?���   LanguageService  %    .���  � RowDefinitions �� $��25 ��� $
��auto ��� $
��auto ��� .+�� $��0��.+�2   ,VibrantBIMDesignApp.View.UCView.ControlBarUC  ]� $��5,0,0,0q�$��1��$��20��.+�o� $	��Top=�
������ .@�m� ����   LanguageService �� Source# [  �� Path$ [File]�.@�m� ���� # [ $ 
[OpenFile]�m� ���� # [ $ 	[NewFile]�m� ���� # [ $ [Save]�m� ���� # [ $ [SaveAs]�m� $
��Edit��.@�m� $��_Update Model Etabs��m� $��	_New File��m� $��_Save��m� $��_Save As��� $��	10,5,10,5q�$��2��	 � ColumnDefinitions	 �� $	��100 ��� $	��250 ��� $	��250 ���  �� $��75 ��� $��75 �.+���   Primary GroupBox#��[ $��0,0,0,-1q�.��� .+�A� ���	#FF48ADED$	��0.5��
�������$��75��$��70���� 
 �� Orientation$
 
Horizontal=�$��Center=�$��Center=�.+��� $��Vibrant��$��Center=�$��Center=��� $	��BIM��$��Center=�$��Center=�$��Medium"����	#FF35A3DC�� #��[ $��0��$��1��$��	-1,0,0,-1q�.���� $
 Vertical=�$��Center=�$��Center=�.+��� $)��#VibrantBIM Structural Design V25.01��$��Center=�$
��Left=��� $��Tác giả : Huy Ngo��$��Center=�$
��Left=�$��Medium"����	#FF35A3DC�� $&�� Email : huyngo14122002@gmail.com��$��Center=�$
��Left=�$��Medium"����	#FF35A3DC�� #��[ $��0��$��2��$��	-1,0,0,-1q�.���� $
 Vertical=�$��Center=�$��Center=�.+��� $
 
Horizontal=�$��Center=�.+��� $��Tài khoản : ��$��Center=�$
��Left=�$��Medium"��� $��Tên tài khoản��$��Center=�$
��Left=��� $
 
Horizontal=�$��Center=�.+��� $��HSD : ��$��Center=�$
��Left=�$��Medium"��� $	��HSD��$��Center=�$
��Left=��� #��[ $��0��$��3��$��2��$��-1,0,0,0q�.���� $��2q����� *Notifications+�� #��[ $��1��.���� $��5,0,0,0q�$
 Vertical=�$��Center=�.+�	� $��Autocad��	� $��Revit��	� $	��IFC���� $��-1,0,0,0q�#��[ $��1��$��2��$��1��.��� 	 �� �� $��85 �.+��� -   $��Lb_ProcessFile��$��2q����� *
FileName+ �� SelectedItem �� *SelectedItem+�� $
 Vertical=�$��Center=�$��1��.+��� $��2q�  Primary Button#��[ $��25��$��Kết nối������ *ConnectEtabsAPI+����  �� ElementName$ Lb_ProcessFile��$ SelectedItem��� $��2q�#��[ $��25��$��Tải dữ liệu������ *ReLoadEtabsAPI+�� $��	10,0,10,5q�$��3��.@��� $��	Mô hình��  TabItemStyle#��[ �� $��Thiết kế dầm��#��[ $��Center=�$��Stretch=��� $��Thiết kế cột��#��[ 