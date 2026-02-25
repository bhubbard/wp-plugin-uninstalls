<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('webful_show_consent_notice');
delete_site_option('webful_show_consent_notice');
delete_option('webful_gdpr_consent');
delete_site_option('webful_gdpr_consent');
delete_option('webful_show_badge');
delete_site_option('webful_show_badge');
delete_option('webful_tracking_enabled');
delete_site_option('webful_tracking_enabled');
delete_option('webful_check_quota');
delete_site_option('webful_check_quota');
delete_option('webful_exclude_admins');
delete_site_option('webful_exclude_admins');
delete_option('webful_excluded_pages');
delete_site_option('webful_excluded_pages');
delete_option('webful_gdpr_consent_date');
delete_site_option('webful_gdpr_consent_date');
delete_option('webful_site_id');
delete_site_option('webful_site_id');
delete_option('webful_api_key');
delete_site_option('webful_api_key');
delete_option('webful_site_url');
delete_site_option('webful_site_url');
delete_option('webful_user_email');
delete_site_option('webful_user_email');
delete_option('webful_version');
delete_site_option('webful_version');
delete_option('webful_activated_at');
delete_site_option('webful_activated_at');

// Delete Transients
delete_transient('webful_quota_check');
delete_site_transient('webful_quota_check');

