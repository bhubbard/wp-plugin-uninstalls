-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_enable_review_rating');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpb_wps_pro_discount_dismissed');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpb_wps_pro_discount_dismissed');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpb_wps_pro_discount_dismissed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpb_wps_pro_discount_dismissed');

