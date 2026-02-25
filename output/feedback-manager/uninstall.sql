-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('znfp_widgetID', 'znfp_tab_color', 'znfp_tab_text', 'znfp_header_text', 'znfp_intro_text');

