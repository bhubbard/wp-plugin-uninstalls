-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpcpo_settings', 'wpcpo_localization', 'woocommerce_tax_display_shop', 'wpclever_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'wpcpo_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpcpo-fields', 'wpcpo-apply-for', 'wpcpo-apply', 'wpcpo-display');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpcpo-fields', 'wpcpo-apply-for', 'wpcpo-apply', 'wpcpo-display');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpcpo-fields', 'wpcpo-apply-for', 'wpcpo-apply', 'wpcpo-display');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpcpo-fields', 'wpcpo-apply-for', 'wpcpo-apply', 'wpcpo-display');

