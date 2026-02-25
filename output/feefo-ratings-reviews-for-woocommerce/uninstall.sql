-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('feefo_wc_wp_just_installed', 'active_sitewide_plugins', 'woocommerce_version', 'feefo_wc_wp_stored_options', 'feefo_wc_wp_widget_options', 'feefo_service_reviews_widget', 'feefo_product_reviews_widget', 'feefo_product_widget_placement', 'feefo_disable_woocommerce_review_tab', 'woocommerce_enable_review_rating', 'woocommerce_review_rating_required');

