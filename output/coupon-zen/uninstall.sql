-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('couponzen_archive_page_style', 'couponzen_par_pages', 'couponzen_post_order', 'couponzen_post_order_by', 'couponzen_coupon_text', 'couponzen_auto_coupon', 'couponzen_remaining_days', 'remaining_days_text', 'couponzen_expired_text', 'couponzen_button_text', 'couponzen_url_target', 'couponzen_button_text_color', 'couponzen_button_text_hover_color', 'couponzen_button_bg_color', 'couponzen_button_bg_hover_color', 'couponzen_coustom_css', 'couponzen_show_par_click', 'couponzen_titel_limit', 'sticky_post_update_check', 'hide_expired_coupon');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('htCzenSticky', 'htCzenEndDate', 'htCzenCouponDiscount', 'htCzenCouponCode', 'couponzen_group', 'htCzenAutoCoupon', 'htCzenSiteUrl', 'htCzenUrlTarget', 'htCouponzenDoFollowPostBtn', '_wp_page_template', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('htCzenSticky', 'htCzenEndDate', 'htCzenCouponDiscount', 'htCzenCouponCode', 'couponzen_group', 'htCzenAutoCoupon', 'htCzenSiteUrl', 'htCzenUrlTarget', 'htCouponzenDoFollowPostBtn', '_wp_page_template', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('htCzenSticky', 'htCzenEndDate', 'htCzenCouponDiscount', 'htCzenCouponCode', 'couponzen_group', 'htCzenAutoCoupon', 'htCzenSiteUrl', 'htCzenUrlTarget', 'htCouponzenDoFollowPostBtn', '_wp_page_template', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('htCzenSticky', 'htCzenEndDate', 'htCzenCouponDiscount', 'htCzenCouponCode', 'couponzen_group', 'htCzenAutoCoupon', 'htCzenSiteUrl', 'htCzenUrlTarget', 'htCouponzenDoFollowPostBtn', '_wp_page_template', '_wp_attachment_image_alt');

