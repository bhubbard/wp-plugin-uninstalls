-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sbf_show_wiki_link', 'sbf_default_units', 'sbf_font_size', 'sbf_background_colour', 'sbf_border_width', 'sbf_border_colour');

