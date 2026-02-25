-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ezws_color_scheme', 'ezws_bg_enable', 'ezws_bg_repeat', 'ezws_bg_image', 'ezws_bg_scheme', 'ezws_textalign', 'ezws_credit');

