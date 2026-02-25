-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'woocommerce_cart_page_id', 'woocommerce_checkout_page_id', 'woocommerce_checkout_order_received_endpoint', 'woocommerce_myaccount_view_order_endpoint', '_wcml_settings', 'cuw_review_notice_revenue', 'cuw_recommendations_list', 'cuw_addons_list');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';
DELETE FROM wp_options WHERE option_name LIKE 'woocommerce_tax_display_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cuw_created_campaign_id', 'cuw_used_order_id', 'cuw_used_by', 'is_cuw_noc', 'usage_limit', 'date_expires', 'cuw_created_order_id', 'cuw_created_for');
DELETE FROM wp_usermeta WHERE meta_key IN ('cuw_created_campaign_id', 'cuw_used_order_id', 'cuw_used_by', 'is_cuw_noc', 'usage_limit', 'date_expires', 'cuw_created_order_id', 'cuw_created_for');
DELETE FROM wp_termmeta WHERE meta_key IN ('cuw_created_campaign_id', 'cuw_used_order_id', 'cuw_used_by', 'is_cuw_noc', 'usage_limit', 'date_expires', 'cuw_created_order_id', 'cuw_created_for');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cuw_created_campaign_id', 'cuw_used_order_id', 'cuw_used_by', 'is_cuw_noc', 'usage_limit', 'date_expires', 'cuw_created_order_id', 'cuw_created_for');

