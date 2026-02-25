-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_enable_coupons', 'WPLFLA_options', 'WCMM_options', 'WCMM_login_failed', 'WCMM_block_ip');
DELETE FROM wp_options WHERE option_name LIKE '%notification_bar_active_time';
DELETE FROM wp_options WHERE option_name LIKE '%notification_bar_review_dismiss';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('hash', 'opened', 'massage_title', 'order_id_send', 'query_id', 'order_id', 'to', 'massage', 'rand_int', 'coupon_amount', 'discount_type', 'expiry_date', 'individual_use', 'product_ids', 'exclude_product_ids', 'usage_limit', 'apply_before_tax', 'free_shipping', 'cron_job', 'use_coupon', 'type', 'category_select', 'tags_select', 'products', 'statuses', 'relation', '_product_id_', '_product_cat_id_', '_product_tag_id_');
DELETE FROM wp_usermeta WHERE meta_key IN ('hash', 'opened', 'massage_title', 'order_id_send', 'query_id', 'order_id', 'to', 'massage', 'rand_int', 'coupon_amount', 'discount_type', 'expiry_date', 'individual_use', 'product_ids', 'exclude_product_ids', 'usage_limit', 'apply_before_tax', 'free_shipping', 'cron_job', 'use_coupon', 'type', 'category_select', 'tags_select', 'products', 'statuses', 'relation', '_product_id_', '_product_cat_id_', '_product_tag_id_');
DELETE FROM wp_termmeta WHERE meta_key IN ('hash', 'opened', 'massage_title', 'order_id_send', 'query_id', 'order_id', 'to', 'massage', 'rand_int', 'coupon_amount', 'discount_type', 'expiry_date', 'individual_use', 'product_ids', 'exclude_product_ids', 'usage_limit', 'apply_before_tax', 'free_shipping', 'cron_job', 'use_coupon', 'type', 'category_select', 'tags_select', 'products', 'statuses', 'relation', '_product_id_', '_product_cat_id_', '_product_tag_id_');
DELETE FROM wp_commentmeta WHERE meta_key IN ('hash', 'opened', 'massage_title', 'order_id_send', 'query_id', 'order_id', 'to', 'massage', 'rand_int', 'coupon_amount', 'discount_type', 'expiry_date', 'individual_use', 'product_ids', 'exclude_product_ids', 'usage_limit', 'apply_before_tax', 'free_shipping', 'cron_job', 'use_coupon', 'type', 'category_select', 'tags_select', 'products', 'statuses', 'relation', '_product_id_', '_product_cat_id_', '_product_tag_id_');

