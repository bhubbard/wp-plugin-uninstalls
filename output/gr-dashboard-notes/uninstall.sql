-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('GR_Dashboard_Notes-ID', 'GR_Dashboard_Notes-1', 'GR_Dashboard_Notes-2', 'GR_Dashboard_Notes-3', 'GR_Dashboard_Notes-4', 'GR_Dashboard_Notes-5', 'GR_Dashboard_Notes-Roles-1', 'GR_Dashboard_Notes-Roles-2', 'GR_Dashboard_Notes-Roles-3', 'GR_Dashboard_Notes-Roles-4', 'GR_Dashboard_Notes-Roles-5');

