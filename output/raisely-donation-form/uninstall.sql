-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('raisely_auth_method', 'raisely_api_key', 'raisely-setup-notice');

