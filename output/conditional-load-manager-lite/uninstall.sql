-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pagespsc_conditions', 'pagespsc_mu_plugin_version', 'pagespsc_mu_plugin_failed', 'pagespsc_version', 'pagespsc_admin_error');

