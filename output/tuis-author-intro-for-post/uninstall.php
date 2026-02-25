<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tui_aifp_div');
delete_site_option('tui_aifp_div');
delete_option('tui_aifp_message');
delete_site_option('tui_aifp_message');
delete_option('tui_aifp_placemessagebefore');
delete_site_option('tui_aifp_placemessagebefore');
delete_option('tui_aifp_hasphp');
delete_site_option('tui_aifp_hasphp');
delete_option('tui_aifp_addcss');
delete_site_option('tui_aifp_addcss');

