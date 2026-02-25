-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('scrollhighlight_selector', 'scrollhighlight_el_color', 'scrollhighlight_color', 'scrollhighlight_opacity', 'scrollhighlight_offset_type', 'scrollhighlight_offset');

