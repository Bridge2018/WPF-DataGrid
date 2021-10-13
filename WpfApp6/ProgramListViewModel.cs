namespace WpfApp6
{
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Text;
    using System.Threading.Tasks;
    using System.Collections.ObjectModel;
    using System.ComponentModel;

    public class ProgramListViewModel
    {
        public ObservableCollection<ProgramStepModel> ProgramModels { get; set; } = new ObservableCollection<ProgramStepModel>();

        public bool CanEdit { get; set; } = true;

        public ProgramListViewModel()
        {
            Random random = new Random();
            for (int i = 0; i < 30; i++)
            {
                ProgramModels.Add(new ProgramStepModel { IsQuick = random.Next(2) == 0, Num = i + 1, Name = Tools.RandomName(5, 8), AlterTime = DateTime.Now, IsLock = random.Next(2) == 0 });
            }
        }
    }

    public class ProgramStepModel
    {
        public bool IsQuick { get; set; }

        public int Num { get; set; }

        public string Name { get; set; }

        public Sex Sex { get; set; }

        public DateTime AlterTime { get; set; }

        public bool IsLock { get; set; }

        public override string ToString()
        {
            return $"IsQuick:{IsQuick}  Num:{Num}  Name:{Name}  AlterTime:{AlterTime}  IsLock:{IsLock}";
        }

    }

    public enum Sex
    {
        Man,
        Woman,
    }

    public class Tools
    {
        static Random Random = new Random();
        public static string RandomName(int minLen, int maxLen, bool haveNum = true)
        {
            List<int> listAscii = new List<int>();
            if (haveNum)
            {
                listAscii.AddRange(Enumerable.Range(48, 10));
            }
            listAscii.AddRange(Enumerable.Range(65, 26));
            listAscii.AddRange(Enumerable.Range(97, 26));
            return Encoding.ASCII.GetString(listAscii.ConvertAll(t => (byte)t).OrderBy(l => Guid.NewGuid()).Take(Random.Next(minLen, maxLen)).ToArray());
        }
    }
}
