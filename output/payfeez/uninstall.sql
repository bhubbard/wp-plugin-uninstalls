-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('payfeez_bacs', 'payfeez_paypal', 'payfeez_rmcsa', 'payfeez_stancer', 'payfeez_stripe');

