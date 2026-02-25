-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('conzent_verified', 'conzent_website_key', 'conzent_site_domain', 'conzent_error', 'conzent_db_version', 'conzent_plugin_error', 'conzent_site_name', 'conzent_site_status', 'conzent_site_id', 'conzent-gtm-id', 'conzent-data-layer');

