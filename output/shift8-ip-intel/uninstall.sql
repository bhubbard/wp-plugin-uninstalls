-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('shift8_ipintel_encryptionkey', 'shift8_ipintel_action', 'shift8_ipintel_action301', 'shift8_ipintel_email', 'shift8_ipintel_timeout', 'shift8_ipintel_actionthreshold', 'shift8_ipintel_subdomain', 'shift8_ipintel_safemode', 'shift_ipintel_action', 'shift8_ipintel_enabled');

