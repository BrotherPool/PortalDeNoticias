//var dbConnection =require ('../../config/dbConnection');
module.exports=function(application){
		
	application.get('/busca2',function(req,res){

		application.app.controllers.busca.busca(application,req,res);
		
	});
};
