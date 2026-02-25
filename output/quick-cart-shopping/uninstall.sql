-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('qcshopping_cart_settings', 'qcshopping_general_settings', 'qcshopping_layout_settings', 'qcshopping_toggle_settings', 'qcshopping_variation_popup_settings', '__qcshopping_pro_license_info', 'qcshopping_checkout_settings', 'qcshopping_installation_time', 'qcshopping_version', 'qcshopping_activate_redirect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt');

