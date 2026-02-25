<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bbt_plugin_version');
delete_site_option('bbt_plugin_version');
delete_option('bbt_pinterest_db_version');
delete_site_option('bbt_pinterest_db_version');
delete_option('account');
delete_site_option('account');

