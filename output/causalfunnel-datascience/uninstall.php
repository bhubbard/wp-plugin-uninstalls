<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('causalfunnel_enable_analytics');
delete_site_option('causalfunnel_enable_analytics');
delete_option('causalfunnel_enable_data_collection');
delete_site_option('causalfunnel_enable_data_collection');
delete_option('causalfunnel_consent_version');
delete_site_option('causalfunnel_consent_version');
delete_option('causalfunnel_consent_date');
delete_site_option('causalfunnel_consent_date');

