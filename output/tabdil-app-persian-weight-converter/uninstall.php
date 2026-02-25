<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tabdil_app_jafar_db_version');
delete_site_option('tabdil_app_jafar_db_version');

