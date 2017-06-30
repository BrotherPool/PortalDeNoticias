module.exports.modificar=function(application,req,res){
	var connection=application.config.dbConnection();
		var noticiasModel=new application.app.models.NoticiasDAO(connection);

		var noticia=req.query;
		//console.log(req.query);
		noticiasModel.getNoticia(noticia,function(error,result){
			res.render("modify/form_alter_noticia",{ validacao : {},noticia :result});
		});
}
module.exports.modificar_salvar=function(application,req,res){
	var noticia=req.body;
	var id=req.query;
	
		req.assert('titulo','Titulo é obrigatório').notEmpty();
		req.assert('resumo','Resumo é obrigatório').notEmpty();
		req.assert('resumo','Resumo deve conter entre 10 e 100 caracteres').len(10,100);
		req.assert('autor','Autor é obrigatório').notEmpty();
		req.assert('data_noticia','Data é obrigatório').notEmpty().isDate({format: 'YYYY-MM-DD' });
		req.assert('noticia','Noticia é obrigatório').notEmpty();
		req.assert('assunto','Assunto é obrigatório').notEmpty();

		var erros=req.validationErrors();
		if(erros){
			var connection=application.config.dbConnection();
			var noticiasModel=new application.app.models.NoticiasDAO(connection);
			noticiasModel.getNoticia(id,function(error,result){
				res.render("modify/form_alter_noticia",{ validacao : erros,noticia :result});
			});
			return;
		}

		var connection=application.config.dbConnection();
		var noticiasModel=new application.app.models.NoticiasDAO(connection);

		noticiasModel.updateNoticia(noticia,id,function(error,result){
			//res.redirect('/noticias');
			res.redirect('/noticias');
		});
}