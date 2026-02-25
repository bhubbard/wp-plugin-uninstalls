<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('plulo_on_dash_col');
delete_site_option('plulo_on_dash_col');
delete_option('plulo_db_version');
delete_site_option('plulo_db_version');

