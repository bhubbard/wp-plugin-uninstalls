-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cssor_style', 'cssor_minify', 'cssor_load', 'cssor_dependency', 'cssor_method');

