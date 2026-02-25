<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cookie_opt_banner_active');
delete_site_option('cookie_opt_banner_active');
delete_option('cookie_opt_id');
delete_site_option('cookie_opt_id');
delete_option('cookie_opt_do_not_sell_page');
delete_site_option('cookie_opt_do_not_sell_page');
delete_option('cookie_opt_first_setting');
delete_site_option('cookie_opt_first_setting');
delete_option('cookie_opt_statistics');
delete_site_option('cookie_opt_statistics');
delete_option('cookie_opt_geolocation_setting');
delete_site_option('cookie_opt_geolocation_setting');
delete_option('cookie_opt_version');
delete_site_option('cookie_opt_version');
delete_option('cookie_opt_views');
delete_site_option('cookie_opt_views');
delete_option('cookie_opt_deactivation');
delete_site_option('cookie_opt_deactivation');

// Delete Transients
delete_transient('msg-cookie-opt');
delete_site_transient('msg-cookie-opt');
delete_transient('validate-err');
delete_site_transient('validate-err');
delete_transient('successUpdate');
delete_site_transient('successUpdate');
delete_transient('packageUser');
delete_site_transient('packageUser');
delete_transient('successDelate');
delete_site_transient('successDelate');
delete_transient('errorsForUpdate');
delete_site_transient('errorsForUpdate');
delete_transient('errorsForCreate');
delete_site_transient('errorsForCreate');
delete_transient('successCreate');
delete_site_transient('successCreate');

// Clear Cron Jobs
wp_clear_scheduled_hook('opt_cookie_id_check_daily_event');
wp_clear_scheduled_hook('cookie_opt_check_daily_event');
wp_clear_scheduled_hook('opt_cookie_my_daily_event');

