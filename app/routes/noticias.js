//var dbConnection =require ('../../config/dbConnection');
module.exports=function(application){
		
	application.get('/noticias',function(req,res){

		application.app.controllers.noticias.noticias(application,req,res);
		
	});

	application.get('/noticia',function(req,res){
		application.app.controllers.noticias.noticia(application,req,res);
	});
	application.get('/busca',function(req,res){
		application.app.controllers.noticias.busca(application,req,res);
	});
	application.get('/elementos',function(req,res){

		application.app.controllers.noticias.elementos(application,req,res);
		
	});

};

