const express=require("express");
const pool=require("./pool");
var app=express();
const cors=require("cors");
app.use(cors({
    origin:[
        "http://127.0.0.1:3001","http://localhost:3001"
    ],
    credentials:true
}))
app.use(express.static(__dirname+"/public"));
app.listen(3000);
app.get("/imagelist",(req,res)=>{
    var obj=[
        {id:1,img_url:"http://127.0.0.1:3000/img/banner1.jpg"},
        {id:2,img_url:"http://127.0.0.1:3000/img/banner2.jpg"},
        {id:3,img_url:"http://127.0.0.1:3000/img/banner3.jpg"}
    ]
    res.send(obj);
});

app.get("/getdeta",(req,res)=>{
    /*var sql="SELECT pid,title,details,pic from xm_ui_index";
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result);
    })*/
    //1:参数  pno pageSize
    var pno = req.query.pno;           //当前页码
    var pageSize = req.query.pageSize; //页大小
    //2:设置参数默认值
    if(!pno){
        pno = 1;
    }
    if(!pageSize){
        pageSize = 4;
    }
    //3:验证用户输入
    var reg = /^[0-9]{1,}$/;
    if(!reg.test(pno)){
        res.send({code:-1,msg:"页码格式不正确"});
        return;
    }
    if(!reg.test(pageSize)){
        res.send({code:-2,msg:"页大小格式不正确"});
        return;
    }
    //4:创建二条sql发送 总记录数
    //4.1:创建空对象保存返回数据
    var obj = {pno:pno,pageSize:pageSize};
    //4.2:创建变量保存(sql语句完成)进度
    var progress = 0;
    var sql = "SELECT count(id) as c FROM xm_ui_index";
    pool.query(sql,(err,result)=>{
        if(err)throw err;
        //console.log(result[0].c);
        var pageCount = Math.ceil(result[0].c/pageSize);
        obj.pageCount = pageCount;   //保存总页数
        progress+=50;                 //记录当前进度
        if(progress==100){            //二条sql完成
        res.send({code:1,msg:obj});//发送结果
        }
    })
    //5:创建二条sql发送 当前页内容
    var sql =" SELECT pid,title,details,pic";
        sql+=" FROM xm_ui_index";
        sql+=" LIMIT ?,?"
    var offset = parseInt((pno-1)*pageSize);
    pageSize = parseInt(pageSize);
    pool.query(sql,[offset,pageSize],(err,result)=>{
        if(err)throw err;
        obj.data = result;       //保存当前页内容
        progress += 50;          //进度加50
        if(progress == 100){     //如果二条sql语句全部完成
        res.send({code:1,msg:obj})//发送
        }
    })
})

app.get("/getzb",(req,res)=>{
    var sql="SELECT title,pic from xm_ui_zb";
    pool.query(sql,(err,result)=>{
        if(err)throw err;
        res.send(result);
    })
})

app.get("/getsy",(req,res)=>{
    var sql="SELECT title,pic from xm_ui_sy";
    pool.query(sql,(err,result)=>{
        if(err)throw err;
        res.send(result);
    })
})

app.get("/getfl",(req,res)=>{
    var sql="SELECT title,pic,details,click,appraised from xm_ui_fl";
    pool.query(sql,(err,result)=>{
        if(err)throw err;
        res.send(result);
    })
})

app.get("/getrm",(req,res)=>{
    var sql="SELECT classify,title,author,pic,details,click,appraised from xm_ui_rm";
    pool.query(sql,(err,result)=>{
        res.send(result);
    })
})

app.get("/getnews",(req,res)=>{
    var sql="SELECT title,pic,time,click from xm_news";
    pool.query(sql,(err,result)=>{
        if(err)throw err;
        res.send(result);
    })
})

app.get("/getnewslist",(req,res)=>{
    var sql="SELECT pic from xm_newslist";
    pool.query(sql,(err,result)=>{
        if(err)throw err;
        res.send(result);
    })
})

app.get("/list",(req,res)=>{
    var sql="SELECT * from xm_ui_list";
    pool.query(sql,(err,result)=>{
        if(err)throw err;
        res.send(result);
    })
})