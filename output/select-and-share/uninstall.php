<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ss_selected_networks');
delete_site_option('ss_selected_networks');
delete_option('ss_title_networks');
delete_site_option('ss_title_networks');
delete_option('ss_wordpress_text');
delete_site_option('ss_wordpress_text');
delete_option('ss_email_text');
delete_site_option('ss_email_text');
delete_option('ss_stats');
delete_site_option('ss_stats');

