-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('age_gate_legacy_css', 'woocommerce_shop_page_id', 'age_gate_version', 'wp_age_gate_version', 'age_gate_updated_from', 'age_gate_theme_css', 'wp_age_gate_restrictions', 'wp_age_gate_messages', 'wp_age_gate_validation_messages', 'wp_age_gate_appearance', 'wp_age_gate_advanced', 'wp_age_gate_access', 'age_gate_dev', 'age_gate_encrypt_key', 'age_gate_encrypt_secret');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt');

