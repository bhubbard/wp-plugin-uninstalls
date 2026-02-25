-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('step_kit_os_settings', 'step_kit_os_settings_cache', 'step_kit_os_button_color');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_wc_persistent_cart_contents', '_step_kit_os_page', '_step_kit_os_version');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', '_wc_persistent_cart_contents', '_step_kit_os_page', '_step_kit_os_version');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_wc_persistent_cart_contents', '_step_kit_os_page', '_step_kit_os_version');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_wc_persistent_cart_contents', '_step_kit_os_page', '_step_kit_os_version');

