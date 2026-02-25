-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wmso_wikimint_maint_settings', 'wmso_wikimint_optimize_settings', 'wmso_wikimint_security_settings');

