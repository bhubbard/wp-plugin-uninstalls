-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('yuko_plugin_options', 'yuko_carousel_html_timestamp', 'yuko_previous_version', 'active_sitewide_plugins', 'yuko_general_settings', 'yuko_settings_data', 'woocommerce_store_address', 'woocommerce_store_address_2', 'woocommerce_store_city', 'woocommerce_store_postcode', 'woocommerce_default_country', 'yuko_current_version', 'yuko_all_reviews_view_content', 'yuko_carousel_html', 'yuko_floating_product_view_content', 'yuko_plugin_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('yuko_average_rating', 'yuko_review_count', 'yuko_questions_count', 'yuko_local_updated_at', 'yuko_product_last_updated_time');
DELETE FROM wp_usermeta WHERE meta_key IN ('yuko_average_rating', 'yuko_review_count', 'yuko_questions_count', 'yuko_local_updated_at', 'yuko_product_last_updated_time');
DELETE FROM wp_termmeta WHERE meta_key IN ('yuko_average_rating', 'yuko_review_count', 'yuko_questions_count', 'yuko_local_updated_at', 'yuko_product_last_updated_time');
DELETE FROM wp_commentmeta WHERE meta_key IN ('yuko_average_rating', 'yuko_review_count', 'yuko_questions_count', 'yuko_local_updated_at', 'yuko_product_last_updated_time');

