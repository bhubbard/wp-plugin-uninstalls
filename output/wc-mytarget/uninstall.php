<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('imtfw_keeplogs');
delete_site_option('imtfw_keeplogs');
delete_option('imtfw_disable_notices');
delete_site_option('imtfw_disable_notices');
delete_option('imtfw_errors');
delete_site_option('imtfw_errors');
delete_option('imtfw_mytarget_id');
delete_site_option('imtfw_mytarget_id');
delete_option('imtfw_dynamic_remarketing');
delete_site_option('imtfw_dynamic_remarketing');
delete_option('imtfw_feed_id');
delete_site_option('imtfw_feed_id');
delete_option('imtfw_code_location');
delete_site_option('imtfw_code_location');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('imtfw_version');
delete_site_option('imtfw_version');

