-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('metrics_auth_username', 'metrics_auth_password', 'metrics_site', 'metrics_variant', 'metrics_uris_to_check', 'metrics_auth_site', 'metrics_auth_variant');

