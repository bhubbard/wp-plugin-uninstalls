-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wptb_count', 'wptb_lang', 'wptb_via', 'wptb_related', 'wptb_related_desc', 'wptb_text', 'wptb_text_value', 'wptb_display_entry', 'wptb_display_page', 'wptb_display_home', 'wptb_position');

