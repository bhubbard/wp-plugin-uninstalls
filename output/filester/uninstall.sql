-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('njt_fs_settings', 'njt_fs_review', 'njt_fs_selector_themes', 'njt_fs_first_time_active', 'njt_fs_version');

