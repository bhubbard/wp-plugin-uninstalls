<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wmab_flush_rewrite');
delete_site_option('wmab_flush_rewrite');
delete_option('wmab_white_label');
delete_site_option('wmab_white_label');
delete_option('wmab_menu_items');
delete_site_option('wmab_menu_items');

