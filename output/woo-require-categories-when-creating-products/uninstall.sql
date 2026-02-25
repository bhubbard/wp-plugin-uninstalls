-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_required_taxonomies_post_types', 'woocommerce_required_taxonomies_taxonomies', 'woocommerce_required_taxonomies_error_message');
DELETE FROM wp_options WHERE option_name LIKE 'woocommerce_required_taxonomies_%';

