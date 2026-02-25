<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('votd_font_family_settings');
delete_site_option('votd_font_family_settings');
delete_option('votd_language');
delete_site_option('votd_language');
delete_option('votd_background_type');
delete_site_option('votd_background_type');
delete_option('votd_activation_date');
delete_site_option('votd_activation_date');
delete_option('votd_review_notice_delayed_until');
delete_site_option('votd_review_notice_delayed_until');
delete_option('votd_review_notice_dismissed');
delete_site_option('votd_review_notice_dismissed');

