-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mclv_410_options_version', 'mclv_410_max_404s', 'mclv_410_links_list');

