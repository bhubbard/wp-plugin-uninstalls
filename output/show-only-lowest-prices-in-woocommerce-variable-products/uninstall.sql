-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ayudawp_lowest_prices_options', 'ayudawp_update_default_text', 'ayudawp_lowest_prices_activation_notice');

