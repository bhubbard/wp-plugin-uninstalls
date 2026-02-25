<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('vq_active_sessions');
delete_site_option('vq_active_sessions');
delete_option('vq_sessions_limit_number');
delete_site_option('vq_sessions_limit_number');
delete_option('vq_cookie_expire_hours');
delete_site_option('vq_cookie_expire_hours');
delete_option('vq_refresh_seconds');
delete_site_option('vq_refresh_seconds');
delete_option('vq_inactive_minutes');
delete_site_option('vq_inactive_minutes');
delete_option('vq_landing_page_url');
delete_site_option('vq_landing_page_url');

