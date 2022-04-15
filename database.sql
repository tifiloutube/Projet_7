CREATE TABLE users (
    id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    lastName VARCHAR(255) CHARACTER SET utf8,
    firstName VARCHAR(255) CHARACTER SET utf8,
    email VARCHAR(255) CHARACTER SET utf8 UNIQUE,
    password VARCHAR(255) CHARACTER SET utf8,
    moderation int(10)
);

CREATE TABLE comments (
    id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    userId INT(10),
    postId INT(10),
    date DATETIME DEFAULT CURRENT_TIMESTAMP,
    comContent VARCHAR(255) CHARACTER SET utf8
);

CREATE TABLE likes (
    id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    postId INT(10),
    userId INT(10)
);

CREATE TABLE posts (
    id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    userId INT(10),
    title VARCHAR(50) CHARACTER SET utf8,
    content TEXT CHARACTER SET utf8,
    date DATETIME DEFAULT CURRENT_TIMESTAMP,
    likes INT(10) DEFAULT 0
);

-- Ajout d'un compte utilisateur qui n'est pas modérateur (valeur 0)
INSERT INTO `users` (`lastName`, `firstName`, `email`, `password`, `moderation`)
VALUES ('VILARINHO', 'Philippe', 'philippebenfica@icloud.com', 'test', '0');

-- Ajout d'un compte utilisateur qui est modérateur (valeur 1)
INSERT INTO `users` (`lastName`, `firstName`, `email`, `password`, `moderation`)
VALUES ('FLORES', 'Stéphan', 'stephanLeGrosZgueg@mashvp.com', 'test', '1');

-- Ajout d'un post qui sera plus tard lié à l'utilisateur ayant l'id
INSERT INTO `posts` (`userId`, `title`, `content`)
VALUES ('Premier commentaire', 'Voici le contenu de mon premier commentaire' );

--Ajout d'un utilisateur dans la base de données
INSERT INTO `users` (`lastName`, `firstName`, `email`, `password`)
VALUES ('VILARINHO', 'Philippe', 'philippe.vilarinhocerqueira@gmail.com', 'azerty');

-- Recherche des posts pour l'users ayant l'id 1
select * from users join posts posts ON (posts.id = users.id);


/*
const Sequelize = require('sequelize');

// Connection de la base de données MySQL au serveur Node.js
const sequelize = new Sequelize("groupomania_dtb", "root", "90630@Klm31085", {
    dialect: "mysql",
    host : "localhost"
});
var exports = module.exports = {};
exports.sequelize = sequelize;

try {
    sequelize.authenticate();
    console.log('Connecté à la base de données MySQL groupomania_dtb');
} catch (error) {
    console.error('Impossible de se connecter, erreur suivante :', error);
}

// Ajout d'/un utilisateur dans la base de données MySQL
/*try {
    sequelize.query("INSERT INTO `users` (`lastName`, `firstName`, `email`, `password`) VALUES ('TEST', 'Test', 'test@gmail.com', 'testPassword')").then(([results, metadata]) => {
        console.log(results);
    })
} catch (error) {
    console.error('Impossible de se connecter, erreur suivante :', error);
}*/

try {
    sequelize.query("SELECT * FROM `users`").then(([results, metadata]) => {
        console.log(results);
    })
} catch (error) {
    console.log(error);
}

try {
    sequelize.query("DELETE FROM `users` WHERE `id` = 4").then(([results, metadata]) => {
        console.log(results);
    })
} catch (error) {
    console.log(error);
}
*/
