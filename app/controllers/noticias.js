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
		console.log(id_noticia);
		//só nome
		if(id_noticia.autor!="" && id_noticia.data_noticia==""&& id_noticia.assunto=="")
		{
			
			noticiasModel.getNoticiasPNome(id_noticia,function(error,result){
				//console.log(result.titulo);
			res.render("noticias/buscaNoticias",{ noticias :result});
		});
		}
		//só assunto
		else if(id_noticia.autor=="" && id_noticia.data_noticia==""&& id_noticia.assunto!="")
		{
			
			noticiasModel.getNoticiasPAssunto(id_noticia,function(error,result){
				//console.log(result.titulo);
			res.render("noticias/buscaNoticias",{ noticias :result});
		});
		}
		//só data
		else if(id_noticia.autor=="" && id_noticia.data_noticia!="" && id_noticia.assunto=="")
		{
			noticiasModel.getNoticiasPData(id_noticia,function(error,result){
			res.render("noticias/buscaNoticias",{ noticias :result});
		});
		}
		//nome e data
		else if(id_noticia.autor!="" && id_noticia.data_noticia!="" && id_noticia.assunto=="")
		{
			noticiasModel.getNoticiasPNomePData(id_noticia,function(error,result){
			res.render("noticias/buscaNoticias",{ noticias :result});
		});
		}
		//nome e assunto
		else if(id_noticia.autor!="" && id_noticia.data_noticia=="" && id_noticia.assunto!="")
		{
			noticiasModel.getNoticiasPNomePAssunto(id_noticia,function(error,result){
			res.render("noticias/buscaNoticias",{ noticias :result});
		});
		}
		//data e assunto
		else if(id_noticia.autor=="" && id_noticia.data_noticia!="" && id_noticia.assunto!="")
		{
			noticiasModel.getNoticiasPDataPAssunto(id_noticia,function(error,result){
			res.render("noticias/buscaNoticias",{ noticias :result});
		});
		}
		//todos
		else if(id_noticia.autor!="" && id_noticia.data_noticia!="" && id_noticia.assunto!="")
		{
			noticiasModel.getNoticiasPNomePDataPAssunto(id_noticia,function(error,result){
			res.render("noticias/buscaNoticias",{ noticias :result});
		});
		}
		else{
			res.render("noticias/busca",{validacao : {},noticia : {}});	
		}
		
}