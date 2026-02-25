-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wcpss_color_2', 'wcpss_color_3', 'wcpss_color_4', 'wcpss_color_5', 'woocommerce_disable_emoticons', 'woocommerce_disable_hint_text', 'woocommerce_myaccount_password_strength', 'woocommerce_hint_text', 'woocommerce_password_strength_label_1', 'woocommerce_password_strength_label_2', 'woocommerce_password_strength_label_3', 'woocommerce_password_strength_label_4', 'woocommerce_password_strength_label_5');

