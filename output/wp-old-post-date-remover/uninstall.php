<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_old_post_date_remover_settings');
delete_site_option('wp_old_post_date_remover_settings');
delete_option('opdr_days_to_show_date');
delete_site_option('opdr_days_to_show_date');

