-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('trustist_payments_sandbox_public_key', 'trustist_payments_sandbox_private_key', 'trustist_payments_public_key', 'trustist_payments_private_key', 'trustist_payments_sandbox_cards_enabled', 'trustist_payments_cards_enabled');

