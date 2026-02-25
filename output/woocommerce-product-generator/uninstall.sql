-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce-product-generator-limit', 'woocommerce-product-generator-per-run', 'woocommerce-product-generator-use-unsplash', 'woocommerce-product-generator-unsplash-access-key', 'woocommerce-product-generator-titles', 'woocommerce-product-generator-title', 'woocommerce-product-generator-contents', 'woocommerce-product-generator-categories', 'woocommerce-product-generator-attributes', 'active_sitewide_plugins', 'woocommerce-product-generator-unsplash-picture-urls');

