<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('skytake_envato_pro_licence');
delete_site_option('skytake_envato_pro_licence');
delete_option('skytake_hide_review_notice');
delete_site_option('skytake_hide_review_notice');
delete_option('skytake_first_notice_hide');
delete_site_option('skytake_first_notice_hide');
delete_option('skytake_do_activation_redirect');
delete_site_option('skytake_do_activation_redirect');
delete_option('skytake_upgrade_notice_time');
delete_site_option('skytake_upgrade_notice_time');
delete_option('selected_coupon');
delete_site_option('selected_coupon');

// Delete Transients
delete_transient('skytake_hide_notices');
delete_site_transient('skytake_hide_notices');

