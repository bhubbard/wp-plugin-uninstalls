-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('slate-opt-plugin-version', 'slate-opt-cache', 'slate-popup-35824', 'slate-popup-vc', 'slate-popup-raster', 'slate-popup-titles', 'slate-popup-shapes');

