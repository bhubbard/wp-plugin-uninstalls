-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('stw_cron_option', 'stw_timstamp_options_page', 'stw_time_check_images', 'WPPortfolio_setting_stw_access_key', 'WPPortfolio_setting_stw_secret_key', 'pptimage', 'imagestorage_link', 'imagestorage_path', 'stw_refresh_last_timestamp', 'stw_doing_refresh', 'WPPortfolio_setting_stw_thumb_size');

