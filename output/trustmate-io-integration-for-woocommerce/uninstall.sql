-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('trustmate_invitations_enabled', 'trustmate_category_path_mode', 'trustmate_account_uuid', 'trustmate_account_language_uuids', 'trustmate_widget_muskrat', 'trustmate_widget_muskrat2', 'trustmate_widget_bee', 'trustmate_widget_lemur', 'trustmate_widget_product_ferret', 'trustmate_widget_product_ferret2', 'trustmate_widget_hydra', 'trustmate_widget_gorilla', 'trustmate_widget_badger', 'trustmate_widget_badger2', 'trustmate_widget_alpaca', 'trustmate_widget_ferret', 'trustmate_widget_ferret2', 'trustmate_widget_chupacabra', 'trustmate_widget_hornet', 'trustmate_widget_multihornet', 'trustmate_widget_owl', 'trustmate_instant_review', 'trustmate_base_url', 'woocommerce_store_address', 'woocommerce_store_address_2', 'woocommerce_store_city', 'woocommerce_store_postcode', 'woocommerce_default_country', 'trustmate_base_widget_url', 'trustmate_partner_token');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_rank_math_gtin_code');
DELETE FROM wp_usermeta WHERE meta_key IN ('_rank_math_gtin_code');
DELETE FROM wp_termmeta WHERE meta_key IN ('_rank_math_gtin_code');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_rank_math_gtin_code');

