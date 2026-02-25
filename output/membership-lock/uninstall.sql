-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mlockdown_status', 'mlock_basic_auth', 'mlockdown_rest_api');

