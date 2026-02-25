-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wgdr_plugin_options_1', 'wgdr_plugin_options_2', 'wgdr_plugin_options_3', 'wgdr_hide_deprecation_info', 'wgdr_plugin_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wgdr_admin_notice_user_meta', '_WGDR_conversion_pixel_fired');
DELETE FROM wp_usermeta WHERE meta_key IN ('wgdr_admin_notice_user_meta', '_WGDR_conversion_pixel_fired');
DELETE FROM wp_termmeta WHERE meta_key IN ('wgdr_admin_notice_user_meta', '_WGDR_conversion_pixel_fired');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wgdr_admin_notice_user_meta', '_WGDR_conversion_pixel_fired');

