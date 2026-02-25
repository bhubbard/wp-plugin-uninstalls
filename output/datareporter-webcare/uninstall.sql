-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('datareporter_webcache_url', 'datareporter_client_id', 'datareporter_organisation_id', 'datareporter_website_id');

