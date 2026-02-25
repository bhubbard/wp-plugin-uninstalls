<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('kpftc_chat_enabled');
delete_site_option('kpftc_chat_enabled');
delete_option('kpftc_chat_link');
delete_site_option('kpftc_chat_link');
delete_option('kpftc_delay_time');
delete_site_option('kpftc_delay_time');
delete_option('kpftc_excluded_pages');
delete_site_option('kpftc_excluded_pages');
delete_option('kpftc_admin_disabled');
delete_site_option('kpftc_admin_disabled');
delete_option('KPFTC_VERSION');
delete_site_option('KPFTC_VERSION');

// Delete Transients
delete_transient('kpftc-admin-notice-activation');
delete_site_transient('kpftc-admin-notice-activation');

