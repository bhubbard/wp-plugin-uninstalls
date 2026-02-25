<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rocket_extra_gzlaststatic');
delete_site_option('rocket_extra_gzlaststatic');
delete_option('rocket_extra_alert_activation');
delete_site_option('rocket_extra_alert_activation');
delete_option('rocket_extra_option_preload');
delete_site_option('rocket_extra_option_preload');
delete_option('rocket_extra_preload_interval');
delete_site_option('rocket_extra_preload_interval');
delete_option('rocket_extra_option_preload_interval');
delete_site_option('rocket_extra_option_preload_interval');
delete_option('rocket_extra_option_hideimagify');
delete_site_option('rocket_extra_option_hideimagify');
delete_option('rocket_extra_option_gzlevel');
delete_site_option('rocket_extra_option_gzlevel');
delete_option('rocket_extra_gzlevel');
delete_site_option('rocket_extra_gzlevel');
delete_option('rocket_extra_option_gzstatic');
delete_site_option('rocket_extra_option_gzstatic');
delete_option('rocket_extra_gzcron');
delete_site_option('rocket_extra_gzcron');
delete_option('rocket_extra_option_disqus');
delete_site_option('rocket_extra_option_disqus');
delete_option('wp_rocket_settings');
delete_site_option('wp_rocket_settings');

// Delete Transients
delete_transient('rocket_preload_complete');
delete_site_transient('rocket_preload_complete');
delete_transient('rocket_preload_running');
delete_site_transient('rocket_preload_running');

