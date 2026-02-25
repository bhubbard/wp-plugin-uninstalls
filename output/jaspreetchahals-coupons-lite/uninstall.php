<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jcorgcr_default_height');
delete_site_option('jcorgcr_default_height');
delete_option('jcorgcr_default_width');
delete_site_option('jcorgcr_default_width');
delete_option('jcorgcr_default_theme_color');
delete_site_option('jcorgcr_default_theme_color');
delete_option('jcorgcr_default_notification_email');
delete_site_option('jcorgcr_default_notification_email');
delete_option('jcorgcr_default_failure_limit');
delete_site_option('jcorgcr_default_failure_limit');
delete_option('jcorgcr_default_send_expiry_notification');
delete_site_option('jcorgcr_default_send_expiry_notification');
delete_option('jcorgcr_default_coupon_category');
delete_site_option('jcorgcr_default_coupon_category');
delete_option('jcorgcr_obfuscate');
delete_site_option('jcorgcr_obfuscate');
delete_option('disply_jcorgcr_url');
delete_site_option('disply_jcorgcr_url');
delete_option('jcorgcr_db_version');
delete_site_option('jcorgcr_db_version');
delete_option('jcorgcr_intermediate_page_id');
delete_site_option('jcorgcr_intermediate_page_id');

