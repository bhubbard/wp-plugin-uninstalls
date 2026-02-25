-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vignette_css_ver', 'vignette_opacity', 'vignette_size');

