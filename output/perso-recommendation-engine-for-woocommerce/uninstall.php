<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('perso_option_name');
delete_site_option('perso_option_name');
delete_option('perso_db_version');
delete_site_option('perso_db_version');

