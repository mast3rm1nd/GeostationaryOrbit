   M S B A M L   `   `   `  ����I  EGeostationizer, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:GeostationaryOrbitGeostationaryOrbit  5   	   #    GeostationaryOrbit.MainWindow   5   	   \ XPresentationFramework, Version=3.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=3.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=3.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   8x,http://schemas.microsoft.com/winfx/2006/xaml    5   	   >d2http://schemas.microsoft.com/expression/blend/2008    5   	   Hmc;http://schemas.openxmlformats.org/markup-compatibility/2006    5   	   0local clr-namespace:GeostationaryOrbit    5   	     � Title$  Geostationizer��5   	   $	��245��6    $	��428��6-    � 
ResizeMode$ CanMinimize=�69    � WindowStartupLocation$ CenterScreen=�6R   .��5	      � .+�5
   
   �� -   5         ��Name$ label��5
      $"��Звёздные сутки:��6   $
��Left=�69   $��	10,10,0,0q�6T   $	��Top=�6g   �� 5   
   -   5         ��Name$ StarDayDuration_textBox��5      $
��Left=�63   $��23��6N   $��112.84,12.96,0,0q�6Z    �� TextWrapping$
 Wrap=�6t   $	��Top=�6�   $��150.663��6�   $��86164��6�   $��Center=�6�   $��Center=�6�   �� 5   
   -   5        $ 
label_Copy��5      $
��[с]��6$   $
��Left=�62   $��268.503,10,0,0q�6M   $	��Top=�6e   �� 5   
   -   5        $ Results_textBox��5      $
��Left=�6+   $��95��6F   $��10,98.88,0,0q�6R   $
 Wrap=�6h   $	��Top=�6|   $	��390��6�    �� 
IsReadOnly . $��Consolas)�6�   �� 5   
   -   5         ��Name$ Calculate_button��5      $��Посчитать��6+   $
��Left=�6?   $��10,71.92,0,0q�6Z   $	��Top=�6p   $	��390��6�   6�   �� 5   
   -   5        $ label_Copy1��5      $��Масса тела:��6%   $
��Left=�6;   $��10,40.96,0,0q�6V   $	��Top=�6l   �� 5   
   -   5        $ BodyMass_textBox��5      $
��Left=�6,   $��23��6G   $��112.84,43.92,0,0q�6S   $
 Wrap=�6m   $	��Top=�6�   $��150.663��6�   $��1��6�   $��Center=�6�   $��Center=�6�   �� 5   
   -   5        $ label_Copy2��5      $��[масс Земли]��6%   $
��Left=�6<   $��268.503,40.96,0,0q�6W   $	��Top=�6r   5      5      