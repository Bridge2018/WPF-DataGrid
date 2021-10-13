namespace WpfApp6
{
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Text;
    using System.Threading.Tasks;
    using System.Windows;
    using System.Windows.Controls;
    using System.Windows.Data;
    using System.Windows.Documents;
    using System.Windows.Input;
    using System.Windows.Media;
    using System.Windows.Media.Imaging;
    using System.Windows.Navigation;
    using System.Windows.Shapes;
    using System.Collections.ObjectModel;

    /// <summary>
    /// MainWindow.xaml 的交互逻辑
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void DataGridRow_MouseDoubleClick(object sender, MouseButtonEventArgs e)
        {
        }

        private void grid_LoadingRow(object sender, DataGridRowEventArgs e)
        {
            DataGrid dataGrid = sender as DataGrid;
            DataGridRow row = e.Row;
            FrameworkElement cellContent = dataGrid.Columns[0].GetCellContent(row);
            if (cellContent != null)
            {
                ProgramStepModel stepModel = row.Item as ProgramStepModel;
                if (stepModel.IsLock)
                {
                    DataGridCell gridCell = dataGrid.Columns[5].GetCellContent(row.Item).Parent as DataGridCell;
                    gridCell.Background = new SolidColorBrush(Colors.Red);
                }
            }
        }


        private void DataGridRow_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            DataGridRow row = sender as DataGridRow;
        }

        private void DataGridCell_MouseDoubleClick(object sender, MouseButtonEventArgs e)
        {

        }

        private void DataGridCell_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            DataGridCell dataGridCell = sender as DataGridCell;
            dataGridCell.Background = new SolidColorBrush(Colors.Gold);
        }

    }
}
