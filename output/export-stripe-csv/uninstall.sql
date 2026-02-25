-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('strcsvexp_settings', 'strcsvexp_stripe_options');

