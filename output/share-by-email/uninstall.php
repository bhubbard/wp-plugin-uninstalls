<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sbe_settings_general_options');
delete_site_option('sbe_settings_general_options');
delete_option('sbe_settings_email_options');
delete_site_option('sbe_settings_email_options');
delete_option('tpul_settings_term_modal_options');
delete_site_option('tpul_settings_term_modal_options');
delete_option('uptime_ghost_options');
delete_site_option('uptime_ghost_options');

