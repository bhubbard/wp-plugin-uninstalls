-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pofw_pizzatoppings_min_selection', 'pofw_pizzatoppings_max_selection', 'pofw_pizzatoppings_min_message', 'pofw_pizzatoppings_max_message', 'active_sitewide_plugins');

