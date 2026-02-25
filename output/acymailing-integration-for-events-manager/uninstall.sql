-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dbem_ms_mainblog_locations', 'dbem_locations_page', 'dbem_ms_global_locations_links', 'dbem_ms_locations_slug', 'dbem_attributes_enabled', 'dbem_placeholders_custom');

