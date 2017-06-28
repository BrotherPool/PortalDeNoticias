module.exports.noticias=function(application,req,res){
	var connection=application.config.dbConnection();
		var noticiasModel=new application.app.models.NoticiasDAO(connection);

		noticiasModel.getNoticias(	function(error,result){
			res.render("noticias/noticias",{ noticias :result});
		});
}
module.exports.noticia=function(application,req,res){
	var connection=application.config.dbConnection();
		var noticiasModel=new application.app.models.NoticiasDAO(connection);

		var id_noticia=req.query;
		console.log(id_noticia);
		noticiasModel.getNoticia(id_noticia,function(error,result){
			res.render("noticias/noticia",{ noticia :result});
		});
}
module.exports.busca=function(application,req,res){
	var noticia=req.body;
	//req.assert('data_noticia','Data é obrigatório').notEmpty().isDate({format: 'YYYY-MM-DD' });
	res.render("noticias/busca",{validacao : {},noticia : {}});	

}
module.exports.elementos=function(application,req,res){
	var connection=application.config.dbConnection();
		var noticiasModel=new application.app.models.NoticiasDAO(connection);

		var id_noticia=req.query;
		console.log(id_noticia.data_noticia);
		if(id_noticia.autor!="" && id_noticia.data_noticia=="")
		{
			
			noticiasModel.getNoticiasPNome(id_noticia,function(error,result){
				//console.log(result.titulo);
			res.render("noticias/buscaNoticias",{ noticias :result});
		});
		}
		else if(id_noticia.autor=="" && id_noticia.data_noticia!="")
		{
			noticiasModel.getNoticiasPData(id_noticia,function(error,result){
			res.render("noticias/noticias",{ noticias :result});
		});
		}
		else if(id_noticia.autor!="" && id_noticia.data_noticia!="")
		{
			noticiasModel.getNoticiasPNomePData(id_noticia,function(error,result){
			res.render("noticias/noticias",{ noticias :result});
		});
		}
		else{
			res.render("noticias/busca",{validacao : {},noticia : {}});	
		}
		
}