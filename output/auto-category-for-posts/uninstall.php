<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('auto_category_db_version');
delete_site_option('auto_category_db_version');
delete_option('auto_category_id');
delete_site_option('auto_category_id');

