   M S B A M L   `   `   `  ����L  HInfoEarthquakeWpf, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:InfoEarthquakeWpfInfoEarthquakeWpf  5   	   "    InfoEarthquakeWpf.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   1localclr-namespace:InfoEarthquakeWpf     5   	     � Title$  EarthquakeInfo��5   	   $	��450��6    $	��800��6-      WindowStyle#���   69    � 	Resources 5	       �� Source�� 5
   
   $ EartquakeTheme.xaml?�6   %    .��5      � .+�5   
   &   System.Windows.Controls.DataGrid  -   5          Name$ itemsDataGrid��5      $
��Left=�6*   $	��224��6E   $��Bottom=�6R   $	��792��6m   $��	0,0,0,195q�6y   �� 5   
   -   5        $��countRecordsTextBox��5      $
��Left=�6-   $��23��6H   $��
41,0,0,108q�6T    �� TextWrapping$
 Wrap=�6h   $�� ��6|   $��Bottom=�6�   $	��120��6�   �� 5   
   -   5        $��
showButton��5      $��Показать��6#   $
��Left=�66   $��166,0,0,108q�6Q   $��Bottom=�6f   $��75��6�   $��23��6�   6�   �� 5   
   -   5        $��
infoButton��5      $;��5Просмотреть(Выберите строку)��6#   $
��Left=�6J   $��596,0,0,172q�6e   $��Bottom=�6z   $	��186��6�   6�   5      5      