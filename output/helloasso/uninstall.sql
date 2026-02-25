-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ha-slug', 'ha-campaign', 'ha-error', 'ha-sync', 'ha-name');

