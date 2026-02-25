-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ampsidebar_color', 'jz_ampsidebar_viewoption', 'jz_ampsidebar_mobiledisplay');

