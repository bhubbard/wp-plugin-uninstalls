-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wcwm_install_date', 'wcwm_wholesale_only_store', 'woocommerce_myaccount_page_id', 'woocommerce_registration_generate_username', 'wcwm_disable_auto_approval', 'wcwm_admin_is_wholesaler', 'wcwm_login_page', 'wcwm_disable_tax', 'wcwm_registration_page_id', 'wcwm_show_original_price', 'wcwm_disable_coupon', 'woocommerce_email_footer_text', 'wcwm_delete_data', 'active_sitewide_plugins', 'wcwm_activated', 'wcwm_activation_redirect');
DELETE FROM wp_options WHERE option_name LIKE '%_flash_messages';
DELETE FROM wp_options WHERE option_name LIKE '_transient_%';
DELETE FROM wp_options WHERE option_name LIKE '%_version';
DELETE FROM wp_options WHERE option_name LIKE 'wc_wholesale_manager_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wcwm_discounts', '_wcwm_visibility', 'wcwm_allow_default_wp_email', 'wcwm_approved', '_wc_b2b_visibility', '_wcwm_approved', '_product_pricing', '_category_pricing');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wcwm_discounts', '_wcwm_visibility', 'wcwm_allow_default_wp_email', 'wcwm_approved', '_wc_b2b_visibility', '_wcwm_approved', '_product_pricing', '_category_pricing');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wcwm_discounts', '_wcwm_visibility', 'wcwm_allow_default_wp_email', 'wcwm_approved', '_wc_b2b_visibility', '_wcwm_approved', '_product_pricing', '_category_pricing');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wcwm_discounts', '_wcwm_visibility', 'wcwm_allow_default_wp_email', 'wcwm_approved', '_wc_b2b_visibility', '_wcwm_approved', '_product_pricing', '_category_pricing');

