-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('preloadx_selected', 'preloadx_color', 'preloadx_bgcolor', 'preloadx_bggradient', 'preloadx_bgimage', 'preloadx_bgtype');

