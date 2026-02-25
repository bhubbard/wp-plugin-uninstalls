<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('PREPAFACILE_CONTRAT');
delete_site_option('PREPAFACILE_CONTRAT');
delete_option('PREPAFACILE_REFEXP');
delete_site_option('PREPAFACILE_REFEXP');
delete_option('PREPAFACILE_STATE_EXPORT');
delete_site_option('PREPAFACILE_STATE_EXPORT');
delete_option('PREPAFACILE_STATE_ENVOIE');
delete_site_option('PREPAFACILE_STATE_ENVOIE');
delete_option('PREPAFACILE_DB_VERSION');
delete_site_option('PREPAFACILE_DB_VERSION');
delete_option('WOO2PREPAFACILE_VERSION');
delete_site_option('WOO2PREPAFACILE_VERSION');

