-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('spoki_ca_gdpr_message', 'spoki_activation_redirect');

