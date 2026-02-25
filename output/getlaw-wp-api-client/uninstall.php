<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('getlaw_text_cache');
delete_site_option('getlaw_text_cache');
delete_option('getlaw_fetch_text_manually');
delete_site_option('getlaw_fetch_text_manually');
delete_option('getlaw_imprint_key');
delete_site_option('getlaw_imprint_key');
delete_option('getlaw_privacy_key');
delete_site_option('getlaw_privacy_key');
delete_option('getlaw_terms_key');
delete_site_option('getlaw_terms_key');
delete_option('getlaw_cancellation_policy_key');
delete_site_option('getlaw_cancellation_policy_key');
delete_option('getlaw_accessibility_statement_key');
delete_site_option('getlaw_accessibility_statement_key');
delete_option('getlaw_imprint_manual_update');
delete_site_option('getlaw_imprint_manual_update');
delete_option('getlaw_privacy_manual_update');
delete_site_option('getlaw_privacy_manual_update');
delete_option('getlaw_terms_manual_update');
delete_site_option('getlaw_terms_manual_update');
delete_option('getlaw_cancellation_policy_manual_update');
delete_site_option('getlaw_cancellation_policy_manual_update');
delete_option('getlaw_accessibility_statement_manual_update');
delete_site_option('getlaw_accessibility_statement_manual_update');

