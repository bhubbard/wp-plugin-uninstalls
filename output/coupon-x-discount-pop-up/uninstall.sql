-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cx_redirect_user', 'cx_convert_serialize_to_json', 'hide_couponx_plugins', 'cx_wc_popup', 'cx_total_widget', 'hide_coupon-x_cta');
DELETE FROM wp_options WHERE option_name LIKE '%_hide_review_box';
DELETE FROM wp_options WHERE option_name LIKE '%_show_review_box_after';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('prm_cx_widget_data', 'version', 'status', 'coupon_type', 'widget_type', 'cx_widget_id', 'start_date', 'end_date', 'coupon', 'visitor', 'widget_open', 'discount_type', 'coupon_amount');
DELETE FROM wp_usermeta WHERE meta_key IN ('prm_cx_widget_data', 'version', 'status', 'coupon_type', 'widget_type', 'cx_widget_id', 'start_date', 'end_date', 'coupon', 'visitor', 'widget_open', 'discount_type', 'coupon_amount');
DELETE FROM wp_termmeta WHERE meta_key IN ('prm_cx_widget_data', 'version', 'status', 'coupon_type', 'widget_type', 'cx_widget_id', 'start_date', 'end_date', 'coupon', 'visitor', 'widget_open', 'discount_type', 'coupon_amount');
DELETE FROM wp_commentmeta WHERE meta_key IN ('prm_cx_widget_data', 'version', 'status', 'coupon_type', 'widget_type', 'cx_widget_id', 'start_date', 'end_date', 'coupon', 'visitor', 'widget_open', 'discount_type', 'coupon_amount');

