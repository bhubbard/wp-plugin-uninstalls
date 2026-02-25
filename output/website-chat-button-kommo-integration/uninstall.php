<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('kommoflash_db_version');
delete_site_option('kommoflash_db_version');
delete_option('kommoflash_toggle_public_widget');
delete_site_option('kommoflash_toggle_public_widget');

