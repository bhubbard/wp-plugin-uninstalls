-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tawcvs_restore_attributes_time', 'tawcvs_backup_attributes_time', 'aovup_dismissed_swatch', 'woosuite_variation_swatches_option', 'woocommerce_hide_out_of_stock_items', 'wcvs_current_version', 'tawcvs_attribute_taxonomies', 'wc_attribute_taxonomies', 'woosuite-all-plugins');
DELETE FROM wp_options WHERE option_name LIKE 'wcvs_welcome_page_shown_v_%';
DELETE FROM wp_options WHERE option_name LIKE '%_0';
DELETE FROM wp_options WHERE option_name LIKE '%_1';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('variation_swatches_disabled', 'dismissed_black_friday_banner', '_wp_attachment_image_alt', 'color', 'image', 'label', 'show-tooltip', 'tooltip-text', 'tooltip-image');
DELETE FROM wp_usermeta WHERE meta_key IN ('variation_swatches_disabled', 'dismissed_black_friday_banner', '_wp_attachment_image_alt', 'color', 'image', 'label', 'show-tooltip', 'tooltip-text', 'tooltip-image');
DELETE FROM wp_termmeta WHERE meta_key IN ('variation_swatches_disabled', 'dismissed_black_friday_banner', '_wp_attachment_image_alt', 'color', 'image', 'label', 'show-tooltip', 'tooltip-text', 'tooltip-image');
DELETE FROM wp_commentmeta WHERE meta_key IN ('variation_swatches_disabled', 'dismissed_black_friday_banner', '_wp_attachment_image_alt', 'color', 'image', 'label', 'show-tooltip', 'tooltip-text', 'tooltip-image');

