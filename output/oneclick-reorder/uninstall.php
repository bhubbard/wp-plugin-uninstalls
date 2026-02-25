<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('oneclick_reorder_button_color');
delete_site_option('oneclick_reorder_button_color');
delete_option('oneclick_enable_reorder');
delete_site_option('oneclick_enable_reorder');
delete_option('oneclick_reorder_button_text');
delete_site_option('oneclick_reorder_button_text');

