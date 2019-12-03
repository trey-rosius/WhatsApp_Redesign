class ChatModel{
  String name;
  String lastMessage;
  String timeStamp;
  bool seen;
  String profilePic;
  int storyCount;
  bool story;

  ChatModel({this.name, this.lastMessage, this.timeStamp, this.seen,
      this.profilePic, this.storyCount,this.story});


}

List<ChatModel> chatModelList =[

  ChatModel(
    name: "Christina Gomez",
    lastMessage: "Hey How are you doing?",
    timeStamp: "Just now",
    seen: false,
    story:true,

    storyCount: 2,
    profilePic: 'assets/images/a.jpeg'

  ),
  ChatModel(
      name: "Selena Andres",
      lastMessage: "Still waiting for him...",
      timeStamp: "Just now",
      seen: false,
      story:true,
      storyCount: 5,
      profilePic: 'assets/images/c.jpeg'

  ),
  ChatModel(
      name: "Jackie Essien",
      lastMessage: "Hello!",
      timeStamp: "30 minutes ago",
      seen: true,
      story:false,

      profilePic: 'assets/images/b.jpeg'

  ),
  ChatModel(
      name: "Appiah Cynthia",
      lastMessage: "That was all tho.....",
      timeStamp: "50 minutes ago",
      seen: false,
      story:true,
      storyCount: 12,
      profilePic: 'assets/images/d.jpeg'

  ),
  ChatModel(
      name: "Marvellous Joseph",
      lastMessage: "Africa Foresight G...",
      timeStamp: "56 minutes ago",
      seen: false,
      story:true,
      storyCount: 2,
      profilePic: 'assets/images/e.jpeg'

  ),

];