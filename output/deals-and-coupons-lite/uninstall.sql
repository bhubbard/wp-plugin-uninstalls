-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dacl_display_options', 'dacl_extra_options', 'dacl_first_activation', 'dacl_version', 'dacl_sticky_coupons', 'dacl_styling_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dacl_expiration', 'dacl_call_to_action', 'dacl_css_class', 'dacl_discount_url', 'dacl_discount_percent', 'dacl_discount_code', 'dacl_discount_description', 'dacl_nofollow', 'dacl_direct_link', 'dacl_exclude_archive', 'dacl_exclude_rotation', 'dacl_exclude_search', 'dacl_coupon_post_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('dacl_expiration', 'dacl_call_to_action', 'dacl_css_class', 'dacl_discount_url', 'dacl_discount_percent', 'dacl_discount_code', 'dacl_discount_description', 'dacl_nofollow', 'dacl_direct_link', 'dacl_exclude_archive', 'dacl_exclude_rotation', 'dacl_exclude_search', 'dacl_coupon_post_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('dacl_expiration', 'dacl_call_to_action', 'dacl_css_class', 'dacl_discount_url', 'dacl_discount_percent', 'dacl_discount_code', 'dacl_discount_description', 'dacl_nofollow', 'dacl_direct_link', 'dacl_exclude_archive', 'dacl_exclude_rotation', 'dacl_exclude_search', 'dacl_coupon_post_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dacl_expiration', 'dacl_call_to_action', 'dacl_css_class', 'dacl_discount_url', 'dacl_discount_percent', 'dacl_discount_code', 'dacl_discount_description', 'dacl_nofollow', 'dacl_direct_link', 'dacl_exclude_archive', 'dacl_exclude_rotation', 'dacl_exclude_search', 'dacl_coupon_post_id');

