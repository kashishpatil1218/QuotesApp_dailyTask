class Quotes {
  late String quote , author;

  Quotes(this.quote,this.author);

  factory Quotes.fromMap(Map m1){
    return Quotes(m1['quote'],m1['author']);
  }
}