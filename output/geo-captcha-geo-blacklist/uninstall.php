<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('geo_capblack_black');
delete_site_option('geo_capblack_black');
delete_option('geo_capblack_legal');
delete_site_option('geo_capblack_legal');
delete_option('geo_capblack_comments');
delete_site_option('geo_capblack_comments');
delete_option('geo_capblack_registration');
delete_site_option('geo_capblack_registration');
delete_option('geo_capblack_log_ips');
delete_site_option('geo_capblack_log_ips');
delete_option('geo_capblack_blocked_spam');
delete_site_option('geo_capblack_blocked_spam');
delete_option('geo_capblack_not_whitelisted_comments');
delete_site_option('geo_capblack_not_whitelisted_comments');
delete_option('geo_capblack_whitelisted_comments');
delete_site_option('geo_capblack_whitelisted_comments');
delete_option('geo_capblack_registered_comments');
delete_site_option('geo_capblack_registered_comments');
delete_option('geo_capblack_manuell_spam');
delete_site_option('geo_capblack_manuell_spam');
delete_option('geo_capblack_whitelisted_spam');
delete_site_option('geo_capblack_whitelisted_spam');
delete_option('recently_activated');
delete_site_option('recently_activated');

