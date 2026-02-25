-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('abtestkit_onboarding_done', 'abtestkit_do_activation_redirect', 'abtestkit_fixed_version_b_titles');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_abtestkit_shadow_of', '_abtestkit_variants', '_abtestkit_shadow', '_sku', '_sold_individually', '_regular_price', '_sale_price', '_price', '_thumbnail_id', '_product_image_gallery', '_abtestkit_rev');
DELETE FROM wp_usermeta WHERE meta_key IN ('_abtestkit_shadow_of', '_abtestkit_variants', '_abtestkit_shadow', '_sku', '_sold_individually', '_regular_price', '_sale_price', '_price', '_thumbnail_id', '_product_image_gallery', '_abtestkit_rev');
DELETE FROM wp_termmeta WHERE meta_key IN ('_abtestkit_shadow_of', '_abtestkit_variants', '_abtestkit_shadow', '_sku', '_sold_individually', '_regular_price', '_sale_price', '_price', '_thumbnail_id', '_product_image_gallery', '_abtestkit_rev');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_abtestkit_shadow_of', '_abtestkit_variants', '_abtestkit_shadow', '_sku', '_sold_individually', '_regular_price', '_sale_price', '_price', '_thumbnail_id', '_product_image_gallery', '_abtestkit_rev');

