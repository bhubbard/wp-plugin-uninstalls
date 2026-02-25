-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nbp_enabled', 'nbp_needs_flush', 'wwhry_nbp_enabled', 'wwhry_nbp_needs_flush');

