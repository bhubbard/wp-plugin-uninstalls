-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tickset_settings');
DELETE FROM wp_options WHERE option_name LIKE '%onboarding_admin_notice_dismissed';

