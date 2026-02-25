-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('acovsw_common_settings', 'acovsw_label_settings', 'acovsw_radio_settings', 'acovsw_color_settings', 'acovsw_image_settings', 'acovsw_tooltip_settings', 'acovsw_advanced_settings', 'acovsw_attribute_values', 'active_sitewide_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_version';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('acovsw_custom_settings');
DELETE FROM wp_usermeta WHERE meta_key IN ('acovsw_custom_settings');
DELETE FROM wp_termmeta WHERE meta_key IN ('acovsw_custom_settings');
DELETE FROM wp_commentmeta WHERE meta_key IN ('acovsw_custom_settings');

