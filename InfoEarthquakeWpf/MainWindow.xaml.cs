using InfoEarthquakeWpf.Models;
using Newtonsoft.Json;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.IO;
using System.Windows;

namespace InfoEarthquakeWpf
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {

        public List<Earthquake> _data;

        public MainWindow()
        {
            InitializeComponent();
            System.Net.WebClient client = new System.Net.WebClient();
            Stream stream = client.OpenRead("https://earthquake-report.com/feeds/recent-eq?json");
            StreamReader sr = new StreamReader(stream);


            string txt = sr.ReadLine();

            List<Earthquake> data = JsonConvert.DeserializeObject<List<Earthquake>>(txt);
           

            _data = data;
            itemsDataGrid.ItemsSource = new List<Earthquake>(_data);
           
        }

        private void ShowButtonClick(object sender, RoutedEventArgs e)
        {

            try
            {

            int countRecords = int.Parse(countRecordsTextBox.Text);


            _data.RemoveRange(countRecords,(_data.Count - countRecords));
            

            itemsDataGrid.ItemsSource = null;
            itemsDataGrid.ItemsSource = new List<Earthquake>(_data);
            
            }
            catch
            {

            }
        }

        private void InfoButtonClick(object sender, RoutedEventArgs e)
        {
            try
            {

                int index = itemsDataGrid.SelectedIndex;

                MessageBox.Show("Magnitude: " + _data[index].Magnitude + "\n"
                    + "Place: " + _data[index].Location + " Latitude: " + _data[index].Latitude + " Longitude: " + _data[index].Longitude + "\n"
                    + "Date and time: " + _data[index].DateTime.ToLongDateString() + "\n"
                    + "Depth: " + _data[index].Depth);
            }
            catch
            {

            }
        }
    }
}
