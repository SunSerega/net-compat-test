##
WriteLines('otp.txt'
  , typeof(IEnumerable<byte>).Assembly.GetTypes.Where(t->t.IsPublic).Select(t->$'{t}')//.PrintLines
  , new System.Text.UTF8Encoding(true)
);

$'Assembly.Location: {typeof(object).Assembly.Location}'.Println;
Println;
$'Environment.Version: {System.Environment.Version}'.Println;
Println;
$'System.Runtime.InteropServices.RuntimeInformation.'.Println;
$'FrameworkDescription: {System.Runtime.InteropServices.RuntimeInformation.FrameworkDescription}'.Println;
$'OSArchitecture:       {System.Runtime.InteropServices.RuntimeInformation.OSArchitecture}'.Println;
$'OSDescription:        {System.Runtime.InteropServices.RuntimeInformation.OSDescription}'.Println;
$'ProcessArchitecture:  {System.Runtime.InteropServices.RuntimeInformation.ProcessArchitecture}'.Println;



;