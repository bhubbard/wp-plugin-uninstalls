-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('brp_reading_progress_bar_options', 'admin_bar_menu');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('brp_reading_progress_bar_display');
DELETE FROM wp_usermeta WHERE meta_key IN ('brp_reading_progress_bar_display');
DELETE FROM wp_termmeta WHERE meta_key IN ('brp_reading_progress_bar_display');
DELETE FROM wp_commentmeta WHERE meta_key IN ('brp_reading_progress_bar_display');

