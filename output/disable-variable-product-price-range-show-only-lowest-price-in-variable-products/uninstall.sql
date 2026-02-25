-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wclp_enable_shop_page', 'wclp_enable_product_page', 'wclp_hide_reset', 'wclp_price_types', 'wclp_title_before', 'wclp_title_after', 'wclp_crossed_price');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wclp_is_disable_on_shop', 'wclp_is_disable_on_single', 'wclp_price_type', 'wclp_title_before_price', 'wclp_title_after_price');
DELETE FROM wp_usermeta WHERE meta_key IN ('wclp_is_disable_on_shop', 'wclp_is_disable_on_single', 'wclp_price_type', 'wclp_title_before_price', 'wclp_title_after_price');
DELETE FROM wp_termmeta WHERE meta_key IN ('wclp_is_disable_on_shop', 'wclp_is_disable_on_single', 'wclp_price_type', 'wclp_title_before_price', 'wclp_title_after_price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wclp_is_disable_on_shop', 'wclp_is_disable_on_single', 'wclp_price_type', 'wclp_title_before_price', 'wclp_title_after_price');

