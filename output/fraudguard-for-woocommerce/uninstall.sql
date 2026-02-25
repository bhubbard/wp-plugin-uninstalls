-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fraudguard_plugin_activation_redirect', 'fraudguard_notifications_enabled', 'fraudguard_admin_emails', 'fraudguard_first_order_rules_enabled', 'fraudguard_first_order_weight', 'fraudguard_risk_score_threshold', 'fraudguard_geo_rules_enabled', 'fraudguard_check_address_match', 'fraudguard_address_match_weight', 'fraudguard_check_phone_country', 'fraudguard_phone_match_weight', 'fraudguard_max_order_amount', 'woocommerce_currency', 'fraudguard_high_risk_countries', 'fraudguard_order_condition_logic', 'fraudguard_order_status_condition', 'fraudguard_enabled');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_fraudguard_is_flagged', '_fraudguard_risk_score', '_fraudguard_triggered_rules');
DELETE FROM wp_usermeta WHERE meta_key IN ('_fraudguard_is_flagged', '_fraudguard_risk_score', '_fraudguard_triggered_rules');
DELETE FROM wp_termmeta WHERE meta_key IN ('_fraudguard_is_flagged', '_fraudguard_risk_score', '_fraudguard_triggered_rules');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_fraudguard_is_flagged', '_fraudguard_risk_score', '_fraudguard_triggered_rules');

