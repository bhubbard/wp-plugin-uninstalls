-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('stocklist_integrator_activation_redirect', 'stocklist_integrator_domain', 'stocklist_integrator_options');

