<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pacwtt_option_css');
delete_site_option('pacwtt_option_css');
delete_option('pacwtt_option_layout');
delete_site_option('pacwtt_option_layout');
delete_option('pacwtt_option_monday');
delete_site_option('pacwtt_option_monday');
delete_option('pacwtt_db_version');
delete_site_option('pacwtt_db_version');

