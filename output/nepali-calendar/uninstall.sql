-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nepali_calendar_admin_notices', 'nepali_calendar_db_version', 'nepali_calendar_file_download_method', 'nepali_calendar_version', 'nepali_calendar_myaccount_page_id', 'nepali_calendar_checkout_page_id', 'nepali_calendar_cache_excluded_uris', '_ur_activation_redirect');
DELETE FROM wp_options WHERE option_name LIKE 'nepali_calendar_admin_notice_%';

