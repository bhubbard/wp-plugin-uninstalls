-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ratec_cf_settings', 'ratec_cf_activation_redirect');

