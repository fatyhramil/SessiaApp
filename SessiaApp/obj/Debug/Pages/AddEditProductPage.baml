   M S B A M L   `   `   `  ����D  @SessiaApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:SessiaApp.PagesSessiaApp.Pages  5      5clr-namespace:SessiaApp.ClassesSessiaApp.Classes  63   (    "SessiaApp.Pages.AddEditProductPage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      /localclr-namespace:SessiaApp.Pages     5      1superclr-namespace:SessiaApp.Classes     63     N� Title$  AddEditProductPage��5	       � 	Resources 5
      &   SessiaApp.Classes.ImageConverter   ImageConverterKey��%   &	          5   
   6   5      .��5      � .+�5   
   �� $��Visible=�6   $	��420��6=   .��5      �� .+�5      �� $)��#Название продукта: ��6   $��14(�66   $��10q�6D   �� 5      -   5         ��Name$ ProductNametb��5      $��30��5      $
��10,0q�5       �� 	IsEnabled .  � Language$ ru-ru�5      $��Center=�5      ��5      �� *ProductName+5      �� 5      $��Артикул: ��6   $��14(�6,   $��10q�6:   �� 5      -   5        $ 	Commenttb��5      $��30��5      $
��10,0q�5      $��Center=�5        . $ ru-ru�5"      ��5      �� *Code+5#      �� 5%      $��10q�6   $��14(�6$   $��Тип продукта: ��62   �� 5&      -   5         ��Name$ ProductTypeCB��5'       �� DisplayMemberPath$ TypeName��5(      ��.  $��30��5+      $
��10,0q�5,       �� SelectedItem 5*      �� *ProductType+5,      �� 5.      $'��!Минимальная цена: ��6   $��14(�65   $��10q�6C   �� 5/      -   5        $ PriceTB��50      $��30��51      $
��10,0q�52      $��Center=�54       . $ ru-ru�56      ��53      �� *MinimalPrice+57      �� 59      $(��"Кол-во работников: ��6   $��14(�66   $��10q�6D   �� 5:      -   5        $ EmployeeCountTB��5;      $��30��5<      $
��10,0q�5=      $��Center=�5?       . $ ru-ru�5A      ��5>      �� *EmployeeCount+5B      �� 5D      $��Номер цеха: ��6   $��14(�6/   $��10q�6=   �� 5E      -   5        $ 
WorkshopTB��5F      $��30��5G      $
��10,0q�5H      $��Center=�5J       . $ ru-ru�5L      ��5I      �� *WorkshopNumber+5M      �� 5O      $)��#Материалы продукта��6   �� 5P      $	��400��6   $
��Left=�6)   .+�5Q      &   System.Windows.Controls.DataGrid  ���#CEFFF9$
��Left=�64   $	��400��6O   $	��115��6[      AutoGenerateColumns .  	   
IsReadOnly	 . ��6�   �� *ProductMaterial+
   Columns
 5R      0  *System.Windows.Controls.DataGridTextColumn  5S      ,  &System.Windows.Controls.DataGridColumn   Header$ Материал��61   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6C   �� *Material.Name+  5T      $ Кол-во��61    6A   �� *MaterialAmount+  5U      $ Цена��61    6?   �� *Material.Price+5W      �� 5X       �� Orientation$ 
Horizontal=�6!   .+�5Y      �� -   5         ��Name$ AddMaterialBtn��5Y   !   $	��150��69   $)��#Изменить материалы��6E   6b   5Z      5[      �� 5\      -   5        $ 	Add_Image��5\      $��30��6,   $��10q�68   $	��200��6D   $
��Left=�6P   $-��'Добавить изображение��6k   �� 5]      -	   5         ��Name$ productImageButton��5]      $	��170��6{   $	��170��6�   $
��Left=�6�   $
��10,0q�6�   ��64   �� *Image+ �� 	Converter# [  6�   �� 5^      -
   5        $ Savebtn��5^      $��30��6*   $	��100��66   $
��Left=�6B   $��Сохранить��6]   $��10q�6q   6}   �� 5_      -   5        $ Backbtn��5_      $��30��6*   $	��100��66   $
��Left=�6B   $��
Назад��6]   $
��10,0q�6m   6{   5`      5a      5c      5d      