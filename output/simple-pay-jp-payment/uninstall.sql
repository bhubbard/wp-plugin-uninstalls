-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('simplepayjppayment-live-enabled', 'simplepayjppayment-test-secret-key', 'simplepayjppayment-live-secret-key', 'simplepayjppayment-test-public-key', 'simplepayjppayment-live-public-key', 'simplepayjppayment-encrypt-key');

