-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('smart_footnotes_style', 'smart_footnotes_popup_style', 'smart_footnotes_heading', 'smart_footnotes_return_text', 'smart_footnotes_custom_css', 'smart_footnotes_show_list');

