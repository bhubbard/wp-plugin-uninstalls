-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wbte_sc_hidden_promotion_banners', 'wt_iew_admin_modules', 'wbfte_promotion_banner_version', 'wt_hide_invoice_cta_banner', 'wt_hide_smart_coupon_cta_banner', 'wt_hide_product_ie_cta_banner', 'wt_iew_advanced_settings', 'wt_u_iew_is_active', 'wt_u_iew_basic_json_migration_complete', 'wt_total_order_count', '_user_welcome_screen_activation_redirect');
DELETE FROM wp_options WHERE option_name LIKE '%_review_request';
DELETE FROM wp_options WHERE option_name LIKE '%_start_date';

