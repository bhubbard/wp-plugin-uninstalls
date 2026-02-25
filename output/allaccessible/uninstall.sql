-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aacb_options', 'aacb_accountID', 'aacb_installed', 'aacb_siteID', 'aacb_hide_premium_notice', 'aacb_version', 'aacb_wizard_completed', 'aacb_setup_notice_dismissed', 'aacb_account_tier', 'aacb_engagement_score', 'aacb_widget_opens_count', 'aacb_days_since_install', 'aacb_conversion_events', 'aacb_email_capture_shown', 'aacb_email_capture_count', 'aacb_site_options_cache', 'aacb_validation_cache');

