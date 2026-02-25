-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('buzzgrid_status', 'buzzgrid_script_url', 'buzzgrid_site_url', 'buzzgrid_access_token');

