-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'pvalley_user_role_based_shipping', 'pvalley_user_role_based_shipping_rule_matrix');

