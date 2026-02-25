<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jgwa_inc_loggedIn');
delete_site_option('jgwa_inc_loggedIn');
delete_option('avea_display_annotations');
delete_site_option('avea_display_annotations');
delete_option('jgwa_website_analytics_date');
delete_site_option('jgwa_website_analytics_date');
delete_option('jgwa_version');
delete_site_option('jgwa_version');
delete_option('jgwa_website_analytics_date_custom');
delete_site_option('jgwa_website_analytics_date_custom');

// Delete Transients
delete_transient('jgwa_notice_message');
delete_site_transient('jgwa_notice_message');

