-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pb_activated_time', 'bit14_rtl_language', 'bit14_enable_fontawesone', 'bit14_enable_googlefonts', 'wpb_js_google_fonts_subsets');

