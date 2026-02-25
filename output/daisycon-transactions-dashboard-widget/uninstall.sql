-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('daisycon_transactions_publisher_id', 'daisycon_transactions_username', 'daisycon_transactions_password');

