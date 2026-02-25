-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wcookie_configuration_dP', 'wcookie_configuration_bT', 'wcookie_configuration_bC', 'wcookie_configuration_tC', 'wcookie_configuration_lC', 'wcookie_configuration_bBC', 'wcookie_configuration_bTC', 'wcookie_configuration_cC', 'wcookie_configuration');

