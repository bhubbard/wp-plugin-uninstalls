-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dwk_apm_settings', 'dwk_apm_payment_methods');

