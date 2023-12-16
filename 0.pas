##

WriteLines('otp.txt'
  , typeof(IEnumerable<byte>).Assembly.GetTypes.Select(t->$'{t}')
  , new System.Text.UTF8Encoding(true)
);

;