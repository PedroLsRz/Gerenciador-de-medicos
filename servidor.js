const express = require('express');
const app = express();
const handlebars = require('express-handlebars')
const bodyParser = require('body-parser')
const Sequelize = require('sequelize')


    app.engine('handlebars', handlebars.engine ({defaultLayout: 'main'}))
    app.set ('view engine', 'handlebars')

//Body parser
    app.use(bodyParser.urlencoded({extended: false}))
    app.use(bodyParser.json())
//Conexão com o banco
    const sequelize = new Sequelize('gestaomedicos', 'root', '', {
    host: "localhost",
    dialect: 'mysql'
})
//Rotas de acesso

   /app.post('/cadastro', function(req, res){
    res.send("Texto: "+req.body.titulo+" Conteudo: "+ req.body.conteudo)
    })/*.then(function(){
    res.redirect('/')
    }).catch(function(erro){
    res.send("Houve um erro: "+erro)
})*/
    app.get('/1', function(req, res){
    res.render('tela1')
})
    app.get('/2', function(req, res){
    res.render('tela2')
})
    app.get('/3', function(req, res){
        res.render('telacadastro')
        

})
    app.get('/3', function(req, res){
    res.redirect('tela2')
    

})
    app.get('/funcionario', function(req, res){
    res.render('telafuncionario')
    

})

    app.listen(8081, function(){
        console.log("Servidor ta rodando em http://localhost:8081");
});




/*object data="views/teste.handlebars" type="svg"></object>
            <svg src="views/teste.handlebars" alt="a">
            <a href="views/teste.handlebars"></a>
</div>*/