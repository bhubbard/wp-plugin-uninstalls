-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rationalcleanup_options', 'rationalcleanup_third_party_widgets', 'rationalwp_plugins_list');

