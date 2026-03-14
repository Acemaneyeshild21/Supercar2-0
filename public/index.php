<?php
/**
 * Point d'entrée principal de l'application Supercar
 * Fichier d'index pour le routeur
 */

// Démarrer la session
session_start();

// Activer l'affichage des erreurs (à désactiver en production)
ini_set('display_errors', 1);
error_reporting(E_ALL);

// Charger la configuration
require_once __DIR__ . '/../config/app.php';
require_once __DIR__ . '/../config/database.php';

// Inclure les classes nécessaires
require_once __DIR__ . '/../src/config/Router.php';
require_once __DIR__ . '/../src/config/Database.php';

// Créer l'instance de la base de données
db = new Database(
    DB_HOST,
    DB_USER,
    DB_PASS,
    DB_NAME
);

// Créer le routeur
$router = new Router();

// Définir les routes
$router->get('/', 'HomeController@index');
$router->get('/cars', 'CarController@index');
$router->get('/cars/:id', 'CarController@show');
$router->post('/cars/create', 'CarController@create');
$router->get('/services', 'ServiceController@index');
$router->get('/test-drive', 'TestDriveController@index');
$router->post('/test-drive/request', 'TestDriveController@request');
$router->post('/contact', 'ContactController@store');
$router->get('/admin/login', 'AdminController@login');
$router->post('/admin/authenticate', 'AdminController@authenticate');

// Dispatcher la requête
try {
    $router->dispatch($_SERVER['REQUEST_METHOD'], $_SERVER['REQUEST_URI']);
} catch (Exception $e) {
    http_response_code(404);
    echo json_encode(['error' => 'Page non trouvée']);
}