-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('quickwebp_bulk_optimize_status', 'quickwebp_bulk_optimize_total', 'quickwebp_bulk_optimize_current', 'quickwebp_settings_conversion', 'quickwebp_settings_conversion_quality', 'quickwebp_settings_conversion_sharpen', 'quickwebp_settings_conversion_ignore_webp', 'quickwebp_settings_conversion_save_original', 'quickwebp_settings_resize', 'quickwebp_settings_resize_value', 'quickwebp_settings_completion', 'quickwebp_settings_completion_options', 'quickwebp_settings_cleanup', 'quickwebp_settings_library', 'quickwebp_settings_conversion_display_webp_mode', 'quickwebp_settings_paste_image');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('quickwebp_already_optimized', 'quickwebp_data', 'quickwebp_has_error');
DELETE FROM wp_usermeta WHERE meta_key IN ('quickwebp_already_optimized', 'quickwebp_data', 'quickwebp_has_error');
DELETE FROM wp_termmeta WHERE meta_key IN ('quickwebp_already_optimized', 'quickwebp_data', 'quickwebp_has_error');
DELETE FROM wp_commentmeta WHERE meta_key IN ('quickwebp_already_optimized', 'quickwebp_data', 'quickwebp_has_error');

