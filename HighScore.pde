
void insert(String ini, int min, int sek){
  String sql;
  
  sql = "INSERT INTO Tider (Initialer,Minutter,Sekunder) VALUES ('" + ini + "', '" + min + "'), '" + sek + "');";
  db.execute(sql);
}
