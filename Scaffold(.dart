Scaffold(
      appBar: AppBar( 
          backgroundColor: Colors.lightGreen,
          title: Text('홍보 게시판', style: TextStyle(color: Colors.white)),
          leading: IconButton(
            icon: Icon(Icons.close),
            onPressed: () => Navigator.of(context).pop(),
          ),
         
          ),
      body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              ElevatedButton(
                child: Text('go back'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              Expanded(
                  child: ListView(
                      shrinkWrap: true,
                      padding: EdgeInsets.all(10.0),
                      children: <Widget>[
                    Container(
                        padding: EdgeInsets.all(1.0),
                        child: OutlinedButton(
                          child: Text('홍보글1'),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => NoticePage()));
                          },
                        )),
                    Container(
                        padding: EdgeInsets.all(1.0),
                        child: OutlinedButton(
                          child: Text('홍보글2'),
                          onPressed: () {},
                        )),
                    Container(
                      padding: EdgeInsets.all(1.0),
                      child: OutlinedButton(
                        child: Text('홍보글3'),
                        onPressed: () {},
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.all(1.0),
                        child: OutlinedButton(
                          child: Text('홍보글4'),
                          onPressed: () {},
                        )),
                    Container(
                        padding: EdgeInsets.all(1.0),
                        child: OutlinedButton(
                          child: Text('홍보글5'),
                          onPressed: () {},
                        )),
                    Container(
                        padding: EdgeInsets.all(1.0),
                        child: OutlinedButton(
                          child: Text('홍보글6'),
                          onPressed: () {},
                        )),
                    Container(
                        padding: EdgeInsets.all(1.0),
                        child: OutlinedButton(
                          child: Text('홍보글7'),
                          onPressed: () {},
                        )),
                    Container(
                        padding: EdgeInsets.all(1.0),
                        child: OutlinedButton(
                          child: Text('홍보글8'),
                          onPressed: () {},
                        )),
                  ])),
              FloatingActionButton.extended(
                icon: const Icon(Icons.add),
                label: Text('홍보글쓰기'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CreateNotice()), //홍보글로 수정필요
                  );
                },
              ),
            ],
          )),
    );