<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('privacy_policy_sitename');
delete_site_option('privacy_policy_sitename');
delete_option('privacy_policy_before_heading');
delete_site_option('privacy_policy_before_heading');
delete_option('privacy_policy_after_heading');
delete_site_option('privacy_policy_after_heading');
delete_option('privacy_policy_before_paragraph');
delete_site_option('privacy_policy_before_paragraph');
delete_option('privacy_policy_after_paragraph');
delete_site_option('privacy_policy_after_paragraph');
delete_option('privacy_policy_contact');
delete_site_option('privacy_policy_contact');
delete_option('privacy_policy_title');
delete_site_option('privacy_policy_title');
delete_option('privacy_policy_slug');
delete_site_option('privacy_policy_slug');
delete_option('privacy_policy_pp_help');
delete_site_option('privacy_policy_pp_help');
delete_option('privacy_policy_browser_help');
delete_site_option('privacy_policy_browser_help');
delete_option('privacy_policy_credit');
delete_site_option('privacy_policy_credit');

