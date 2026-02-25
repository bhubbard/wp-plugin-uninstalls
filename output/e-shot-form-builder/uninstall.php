<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('eshotformbuilder_db_version');
delete_site_option('eshotformbuilder_db_version');

