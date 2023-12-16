##

WriteLines('otp.txt'
  , typeof(IEnumerable<byte>).Assembly.GetTypes.Where(t->t.IsPublic).Select(t->$'{t}').PrintLines
  , new System.Text.UTF8Encoding(true)
);

;