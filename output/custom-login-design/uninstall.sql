-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('custlode_logo', 'custlode_form_background_color', 'custlode_background_color', 'custlode_input_style', 'custlode_heading_color', 'custlode_label_color', 'custlode_link_color');

