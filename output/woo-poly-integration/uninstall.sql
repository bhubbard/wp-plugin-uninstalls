-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpi_wcpagecheck_passed', 'hyyan-wpi-flash-messages', 'woocommerce_email_footer_text', 'polylang', 'woocommerce_shop_page_id', 'woocommerce_permalinks', 'wpi_version', 'woocommerce_checkout_privacy_policy_text', 'woocommerce_registration_privacy_policy_text', 'woocommerce_demo_store_notice', 'woocommerce_checkout_terms_and_conditions_checkbox_text', 'woocommerce_manage_stock', 'woocommerce_price_display_suffix');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_translation_porduct_type', '_default_attributes', 'user_lang', 'display_type', 'thumbnail_id', '_point_to_variation');
DELETE FROM wp_usermeta WHERE meta_key IN ('_translation_porduct_type', '_default_attributes', 'user_lang', 'display_type', 'thumbnail_id', '_point_to_variation');
DELETE FROM wp_termmeta WHERE meta_key IN ('_translation_porduct_type', '_default_attributes', 'user_lang', 'display_type', 'thumbnail_id', '_point_to_variation');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_translation_porduct_type', '_default_attributes', 'user_lang', 'display_type', 'thumbnail_id', '_point_to_variation');

