   M S B A M L   `   `   `  ����J  FGroupAssignment, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null=#clr-namespace:GroupAssignment.ItemsGroupAssignment.Items  5   	   $    GroupAssignment.Items.wndItems   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   5local#clr-namespace:GroupAssignment.Items     5   	     � Title$  Items��5   	   $	��477��6   $	��813��6$   ���	#FF428EDA.��5	      � .+�5
   
   &   System.Windows.Controls.DataGrid  -   5        $��ItemDescTableDataGrid��5
      $
��Left=�60   $��
10,10,0,10q�6L   $��Stretch=�6`   $	��439��6|      Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      -   5        dataGridTextColumnItemCode��,  &System.Windows.Controls.DataGridColumn   Header$ 	Item Name��5   I      Width5  /System.Windows.Controls.DataGridLengthConverter$ * 6\      
IsReadOnly . 1  +System.Windows.Controls.DataGridBoundColumn   Binding 6f   �� *
ItemCode+   ClipboardContentBinding 6�   Z� 6�     5      $ Item Description��6%   $ 3* 6?    .  6J   �� *
ItemDesc+ 6g   Z� 6�     5      $ 	Item Cost��6%   $ * 68    .  6B   �� *
ItemCost+ 6_   Z� 6�   5      � 5   
   $��Stretch=�6   $��Stretch=�6-   .+�5      �� -   5        $��addItemButton��5      $��Add Item��6*   $
��Left=�6=   $��676,256,0,0q�6X   $	��Top=�6m   $��75��6�   $��30��6�    J� RenderTransformOrigin$ 2.061,3.771&�6�   6�   �� 5      -   5        $��editItemButton��5      $��	Edit Item��6+   $
��Left=�6?   $��676,329,0,0q�6Z   $	��Top=�6o   $��75��6�   $��30��6�   6�   �� 5      -   5        $��deleteItembutton��5      $��Delete Item��6-   $
��Left=�6C   $��541,329,0,0q�6^   $	��Top=�6s   $��75��6�   $��30��6�   6�   �� 5      -   5        $��itemCodeText��5      $
��Left=�6*   $��24��6E   $��
583,64,0,0q�6Q    �� TextWrapping$
 Wrap=�6e   $�� ��6y   $	��Top=�6�   $	��168��6�   �� 5      -   5        $��itemCostText��5      $
��Left=�6*   $��24��6E   $��583,180,0,0q�6Q   $
 Wrap=�6f   $�� ��6z   $	��Top=�6�   $	��168��6�   �� 5      -   5        $��itemDescText��5      $
��Left=�6*   $��24��6E   $��583,126,0,0q�6Q   $
 Wrap=�6f   $�� ��6z   $	��Top=�6�   $	��168��6�   �� 5      $��
Item Name:��6   $
��Left=�6)   $��
504,63,0,0q�6D   $	��Top=�6X   �� 5      $��Item Description:��6   $
��Left=�60   $��476,125,0,0q�6K   $	��Top=�6`   �� 5      $��
Item Cost:��6   $
��Left=�6)   $��512,179,0,0q�6D   $	��Top=�6Y   �� 5      -	   5        $��ErrorItemCode��5      $��  ��6)   $
��Left=�66   $��30��6Q   $��
470,93,0,0q�6]   $	��Top=�6q   $	��312��6�   $��10(�6�   $��Center=�6�   �� 5      -
   5        $��ErrorItemDesc��5      $��  ��6)   $
��Left=�66   $��30��6Q   $��470,150,0,0q�6]   $	��Top=�6r   $	��312��6�   $��10(�6�   $��Center=�6�   �� 5      -   5        $��ErrorItemCost��5      $��  ��6)   $
��Left=�66   $��30��6Q   $��470,221,0,0q�6]   $	��Top=�6r   $	��312��6�   $��10(�6�   $��Center=�6�   5      5      5!      