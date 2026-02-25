-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('shipping_by_rules_plugin_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_rules_shipping_shipping_method', '_rules_shipping_ruleset');
DELETE FROM wp_usermeta WHERE meta_key IN ('_rules_shipping_shipping_method', '_rules_shipping_ruleset');
DELETE FROM wp_termmeta WHERE meta_key IN ('_rules_shipping_shipping_method', '_rules_shipping_ruleset');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_rules_shipping_shipping_method', '_rules_shipping_ruleset');

