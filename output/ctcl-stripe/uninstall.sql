-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ctcl_stripe_display_label', 'ctcl_activate_stripe', 'ctcl_stripe_test_mode', 'ctc_stripe_test_publishable_key', 'ctc_stripe_test_secret_key', 'ctc_stripe_live_publishable_key', 'ctc_stripe_live_secret_key', 'ctcl_currency');

