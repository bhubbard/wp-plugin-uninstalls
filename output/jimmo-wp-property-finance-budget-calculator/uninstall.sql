-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jimmo_wp_property_finance_budget_calculator_display_credits', 'jimmo_wp_property_finance_budget_calculator_activation_notice');
DELETE FROM wp_options WHERE option_name LIKE '%_display_credits';

