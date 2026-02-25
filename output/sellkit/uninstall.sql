-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sellkit-partner-offer-theme-dismissed', 'sellkit_global_checkout_id', 'rewrite_rules', 'sellkit-installed-time', 'delete_data', 'sellkit_funnel_permalink_base', 'sellkit', 'woocommerce_checkout_page_id', 'woocommerce_ship_to_destination', 'woocommerce_enable_shipping_calc', 'woocommerce_registration_generate_username', 'woocommerce_registration_generate_password', 'woocommerce_enable_signup_and_login_from_checkout', 'woocommerce_tax_total_display', 'woocommerce_bacs_accounts', 'woocommerce_currency_pos', 'sellkit_pro_delete_data');
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('date_expires', 'customer_email', 'usage_limit', 'usage_count', '_used_by', 'sellkit_personalised_coupon_data', 'sellkit_steps', 'nodes', 'step_data', 'conditions', 'sellkit_post_slug', '_elementor_data', 'billing_email', 'filters', '_customer_user', 'sellkit_checkout_widget_custom_field_of_order');
DELETE FROM wp_usermeta WHERE meta_key IN ('date_expires', 'customer_email', 'usage_limit', 'usage_count', '_used_by', 'sellkit_personalised_coupon_data', 'sellkit_steps', 'nodes', 'step_data', 'conditions', 'sellkit_post_slug', '_elementor_data', 'billing_email', 'filters', '_customer_user', 'sellkit_checkout_widget_custom_field_of_order');
DELETE FROM wp_termmeta WHERE meta_key IN ('date_expires', 'customer_email', 'usage_limit', 'usage_count', '_used_by', 'sellkit_personalised_coupon_data', 'sellkit_steps', 'nodes', 'step_data', 'conditions', 'sellkit_post_slug', '_elementor_data', 'billing_email', 'filters', '_customer_user', 'sellkit_checkout_widget_custom_field_of_order');
DELETE FROM wp_commentmeta WHERE meta_key IN ('date_expires', 'customer_email', 'usage_limit', 'usage_count', '_used_by', 'sellkit_personalised_coupon_data', 'sellkit_steps', 'nodes', 'step_data', 'conditions', 'sellkit_post_slug', '_elementor_data', 'billing_email', 'filters', '_customer_user', 'sellkit_checkout_widget_custom_field_of_order');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'sellkit_admin_promotion_dismissed_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'sellkit_admin_promotion_dismissed_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'sellkit_admin_promotion_dismissed_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'sellkit_admin_promotion_dismissed_%';

