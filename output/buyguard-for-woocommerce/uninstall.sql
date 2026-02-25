-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_feature_custom_order_tables', 'buyguard_restriction_rules', 'buyguard_cleanup_notice', 'buyguard_rules_cache', 'buyguard_activation_notice');

