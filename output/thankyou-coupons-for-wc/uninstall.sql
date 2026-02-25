-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc_wctc_enabled', 'wc_wctc_coupon_type', 'wc_wctc_coupon_amount', 'wc_wctc_free_shipping', 'wc_wctc_coupon_limit', 'wc_wctc_user_limit', 'wc_wctc_individual_use', 'wc_wctc_restrict_creation', 'wc_wctc_before_tax', 'wc_wctc_coupon_min_spend', 'wc_wctc_free_extax', 'wc_wctc_expires_in_days', 'wc_wctc_message', 'wc_wctc_expiry_message', 'wc_wctc_coupon_color', 'wc_wctc_restrict_paid');

