module.exports.busca=function(application,req,res){
	var noticia=req.body;
	//req.assert('data_noticia','Data é obrigatório').notEmpty().isDate({format: 'YYYY-MM-DD' });
	res.render("busca/teste");	

}