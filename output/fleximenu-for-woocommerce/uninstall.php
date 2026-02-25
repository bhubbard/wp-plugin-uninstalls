<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fleximenu_wc_menu_labels');
delete_site_option('fleximenu_wc_menu_labels');
delete_option('fleximenu_wc_unset_menu_labels');
delete_site_option('fleximenu_wc_unset_menu_labels');

