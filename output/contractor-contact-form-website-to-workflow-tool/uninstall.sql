-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jp_customer_form_fields', 'jp_use_custom_theme', 'jp_token_options', 'jp_connected_user', 'jp_form_submitted', 'jp_trades', 'jp_states', 'jp_countries', 'jp_referrals');

