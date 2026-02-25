-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('esodwpi_client_id', 'esodwpi_client_secret', 'esodwpi_tenant_id', 'esodwpi_redirect_uri', 'esodwpi_access_token', 'esodwpi_code', 'esodwpi_refresh_token');

