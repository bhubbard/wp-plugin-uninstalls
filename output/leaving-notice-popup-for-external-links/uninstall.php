<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('externallinknotice_review_notice_dismissed');
delete_site_option('externallinknotice_review_notice_dismissed');
delete_option('externallinknotice_activation_date');
delete_site_option('externallinknotice_activation_date');
delete_option('externallinknotice_notice_dismiss_count');
delete_site_option('externallinknotice_notice_dismiss_count');
delete_option('externallinknotice_user_already_reviewed');
delete_site_option('externallinknotice_user_already_reviewed');
delete_option('externallinknotice_user_needs_help');
delete_site_option('externallinknotice_user_needs_help');
delete_option('external_links_notice_options');
delete_site_option('external_links_notice_options');
delete_option('leaving_notice_popup_options');
delete_site_option('leaving_notice_popup_options');
delete_option('externallinknotice_options');
delete_site_option('externallinknotice_options');

// Delete Transients
delete_transient('externallinknotice_activation');
delete_site_transient('externallinknotice_activation');

