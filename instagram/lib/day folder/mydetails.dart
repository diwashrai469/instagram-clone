class mydetails {
  String img;
  int id;
  String name;
  mydetails(this.img, this.id, this.name);
}

class newsfeeddetails {
  String img;
  String id;
  String name;
  String logoname;
  int myid;
  newsfeeddetails(this.img, this.id, this.name, this.logoname, this.myid);
}

class profiledaydetails {
  String img;
  String name;
  profiledaydetails({
    required this.img,
    required this.name,
  });
}

class gridviewlist {
  String img;
  int id;
  gridviewlist(
    this.img,
    this.id,
  );
}

class videaandimage {
  String img;
  int id;
  videaandimage(this.id, this.img);
}
