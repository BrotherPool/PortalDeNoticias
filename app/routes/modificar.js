
module.exports=function(application){
	application.get('/modificar',function(req,res){
		application.app.controllers.modify.modificar(application,req,res);
	});

	application.post('/modificar/salvar',function(req,res){
		application.app.controllers.modify.modificar_salvar(application,req,res);
	});	

}