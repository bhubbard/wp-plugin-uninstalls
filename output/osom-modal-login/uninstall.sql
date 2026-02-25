-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('osom_ml_settings', 'osom_ml_do_activation_redirect');

