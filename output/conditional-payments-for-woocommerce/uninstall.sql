-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wcp_pro_features', 'wcp_debug_mode', 'wcp_disable_all', 'wcp_ruleset_order', 'woocommerce_tax_display_cart', 'wcp_updated_200', 'wcp_updated_214', 'wcp_name_address_fields');
DELETE FROM wp_options WHERE option_name LIKE 'wcp_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wcp_enabled', '_wcp_operator', '_wcp_conditions', '_wcp_actions');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wcp_enabled', '_wcp_operator', '_wcp_conditions', '_wcp_actions');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wcp_enabled', '_wcp_operator', '_wcp_conditions', '_wcp_actions');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wcp_enabled', '_wcp_operator', '_wcp_conditions', '_wcp_actions');

