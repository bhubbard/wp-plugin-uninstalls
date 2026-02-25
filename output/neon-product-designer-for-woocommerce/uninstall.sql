-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('npd-general-options', 'npd_clean_promo_stats', 'npd-fonts', 'woocommerce_currency_pos', 'kali-data');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('npd_clean_promo_dismissed', 'npd_clean_promo_later', 'npd-metas', 'variation_minimum_allowed_quantity', 'minimum_allowed_quantity', 'variation_maximum_allowed_quantity', 'maximum_allowed_quantity', 'npd-colors-palette-data', 'npd-config', 'npd-scenes-data', 'npd_saved_designs');
DELETE FROM wp_usermeta WHERE meta_key IN ('npd_clean_promo_dismissed', 'npd_clean_promo_later', 'npd-metas', 'variation_minimum_allowed_quantity', 'minimum_allowed_quantity', 'variation_maximum_allowed_quantity', 'maximum_allowed_quantity', 'npd-colors-palette-data', 'npd-config', 'npd-scenes-data', 'npd_saved_designs');
DELETE FROM wp_termmeta WHERE meta_key IN ('npd_clean_promo_dismissed', 'npd_clean_promo_later', 'npd-metas', 'variation_minimum_allowed_quantity', 'minimum_allowed_quantity', 'variation_maximum_allowed_quantity', 'maximum_allowed_quantity', 'npd-colors-palette-data', 'npd-config', 'npd-scenes-data', 'npd_saved_designs');
DELETE FROM wp_commentmeta WHERE meta_key IN ('npd_clean_promo_dismissed', 'npd_clean_promo_later', 'npd-metas', 'variation_minimum_allowed_quantity', 'minimum_allowed_quantity', 'variation_maximum_allowed_quantity', 'maximum_allowed_quantity', 'npd-colors-palette-data', 'npd-config', 'npd-scenes-data', 'npd_saved_designs');

