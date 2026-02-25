-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lfaf_expiration_date', 'lfaf_included_post_types', 'lfaf_clear_ignored', 'wp_archive_updater_ignored', 'Y-m-d', 'wp_archive_updater_todays_page');

