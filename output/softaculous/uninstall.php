<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('softaculous_auth_key');
delete_site_option('softaculous_auth_key');
delete_option('wpcentral_version');
delete_site_option('wpcentral_version');
delete_option('softaculous_connected');
delete_site_option('softaculous_connected');
delete_option('softaculous_dismiss_notice_date');
delete_site_option('softaculous_dismiss_notice_date');
delete_option('softaculous_promo_time');
delete_site_option('softaculous_promo_time');
delete_option('softaculous_allowed_ips');
delete_site_option('softaculous_allowed_ips');
delete_option('softaculous_version');
delete_site_option('softaculous_version');
delete_option('softaculous_signonkey');
delete_site_option('softaculous_signonkey');
delete_option('softaculous_signonkey_time');
delete_site_option('softaculous_signonkey_time');

