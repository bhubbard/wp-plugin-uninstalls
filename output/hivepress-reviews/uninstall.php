<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hp_reviews_per_page');
delete_site_option('hp_reviews_per_page');
delete_option('hp_review_default_order');
delete_site_option('hp_review_default_order');
delete_option('hp_review_allow_attachment');
delete_site_option('hp_review_allow_attachment');
delete_option('hp_review_allow_replies');
delete_site_option('hp_review_allow_replies');
delete_option('hp_installed_time');
delete_site_option('hp_installed_time');
delete_option('hp_review_allow_anonymous');
delete_site_option('hp_review_allow_anonymous');
delete_option('hp_review_criteria');
delete_site_option('hp_review_criteria');
delete_option('hp_review_enable_moderation');
delete_site_option('hp_review_enable_moderation');
delete_option('hp_review_allow_multiple');
delete_site_option('hp_review_allow_multiple');
delete_option('hp_user_enable_display');
delete_site_option('hp_user_enable_display');

