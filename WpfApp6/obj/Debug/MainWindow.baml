   M S B A M L   `   `   `  ����B  >WpfApp6, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:WpfApp6WpfApp6  5   	   O Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem 5   	       WpfApp6.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:WpfApp6     5   	   7core&clr-namespace:System;assembly=mscorlib     5   	     � Title$  
MainWindow��5   &   $
��1000��5   	   $	��600��6    � WindowStartupLocation$ CenterScreen=�64    � DataContext 5	      "   WpfApp6.ProgramListViewModel  5
   
   .��5      �  � 	Resources 5   
    
  myEnum S� 
MethodName S� 
ObjectType  System.Enum S� MethodParameters M� Type   WpfApp6.Sex��%e   &	        S� 5      $ 	GetValues��60   "  6G    5      M� 5      "  6   5      5      .+�5   
   &   System.Windows.Controls.DataGrid  -   5          Name$
 grid��5      	   AutoGenerateColumns	 .    	gridStyle#��[ 5      
   HeadersVisibility$
 Column=�66      EnableRowVirtualization .  ��5   =   �� *ProgramModels+   Columns 5      4  .System.Windows.Controls.DataGridTemplateColumn  5      ,  &System.Windows.Controls.DataGridColumn   Width5  /System.Windows.Controls.DataGridLengthConverter$
 0.1* 6)      Header$ 快捷��66      
IsReadOnly .    CellTemplate 5      �� 5      .R�5      �� $	����6'   ���#00B2EE  ckColumn#��[ 5   �   
 � Tag$	 ��6�    d� 	IsChecked 5   O   �� *	IsQuick+ �� UpdateSourceTrigger$ PropertyChanged=�{�5   '   �� *DataContext.CanEdit+ �� RelativeSource ��  �� AncestorType$ WindowL�6�   5      5      0  *System.Windows.Controls.DataGridTextColumn  5       $
 0.1* 6%     tbColumn1	  +System.Windows.Controls.DataGridBoundColumn 	  ElementStyle# [ 6J   $ 序号��6s    .  	  Binding 62   �� *Num+6     5!      $
 0.3* 6%   # [ 6K   $ 名称��6t    .  62   �� *Name+6�   4
  .System.Windows.Controls.DataGridComboBoxColumn
  5"      $
 0.1* 6)   $ 性别��66    
  ItemsSource 6B   ��  �� Source# [   
  SelectedItemBinding 6y   �� *Sex+ 
  ElementStyle 5#      �� 5$       �� 
TargetType" ��6    .�5%      ��  �� Property � �� �� Value$ Center=�6D   �� 5&       � ��$ Center=�6B   5'      5)        5*      $
 0.2* 6%   # [ 6   $ 修改时间��6�    .  62   �� *	AlterTime+  dataConverterShort �� 	Converter# [ 6�     5,      $
 0.1* 6)   $ 锁定��66    .  5-      �� 5.      .R�5/      �� $	����6'   $��28(�6:   $
��Bold"�6H   ���#EE7600#��[ 50   �   $	 ��6�    5/   o   �� *IsLock+$ PropertyChanged=�{�50   '   �� *DataContext.CanEdit+ �� $ WindowL�6�   51      53          RowStyle  55      �� 56      )  #System.Windows.Controls.DataGridRow"  6     gridRowStyle! �� BasedOn#! [ 61   .�57      -   5        59      "   	CellStyle" 5;      �� 5<      *  $System.Windows.Controls.DataGridCell"  6     gridCellStyle#! [ 62   .�5=      -   5        5?      5A      5C      5D      