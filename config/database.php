<?php
/**
 * Configuration de la base de données
 * Charge les variables d'environnement
 */

// Charger le fichier .env
$env_file = __DIR__ . '/../.env';
if (!file_exists($env_file)) {
    die('Erreur: Fichier .env non trouvé. Veuillez copier .env.example à .env et configurer vos paramètres.');
}

// Parser le fichier .env
$env_vars = [];
$lines = file($env_file, FILE_IGNORE_NEW_LINES | FILE_SKIP_EMPTY_LINES);
foreach ($lines as $line) {
    if (strpos(trim($line), '#') === 0) continue;
    if (strpos($line, '=') !== false) {
        list($key, $value) = explode('=', $line, 2);
        $env_vars[trim($key)] = trim($value);
    }
}

// Définir les constantes de configuration
define('DB_HOST', $env_vars['DB_HOST'] ?? 'localhost');
define('DB_USER', $env_vars['DB_USER'] ?? 'root');
define('DB_PASS', $env_vars['DB_PASS'] ?? '');
define('DB_NAME', $env_vars['DB_NAME'] ?? 'supercar');
define('DB_CHARSET', 'utf8mb4');
define('DB_PORT', $env_vars['DB_PORT'] ?? 3306);

// Configuration de l'application
define('APP_NAME', $env_vars['APP_NAME'] ?? 'Supercar');
define('APP_ENV', $env_vars['APP_ENV'] ?? 'development');
define('APP_URL', $env_vars['APP_URL'] ?? 'http://localhost');
define('APP_DEBUG', $env_vars['APP_DEBUG'] === 'true');

// Configuration de sécurité
define('HASH_ALGO', 'bcrypt');
define('JWT_SECRET', $env_vars['JWT_SECRET'] ?? 'your-secret-key-change-in-production');

?>