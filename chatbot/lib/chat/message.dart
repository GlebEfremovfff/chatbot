class Message {
  int _id;
  int _from_bot;
  String _text;
  String _link;

  Message(this._id, this._from_bot, this._text, this._link);

  int get id => _id;
  int get from_bot => _from_bot;
  String get text => _text;
  String get link => _link;

  set setId(int new_id) {
    this._id = new_id;
  }

  set setFrom_bot(int new_from_bot) {
    this._from_bot = new_from_bot;
  }

  set setText(String new_text) {
    this._text = new_text;
  }

  set setLink(String new_link) {
    this._link = new_link;
  }
}
