-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('slidebox_css_title', 'slidebox_css_content', 'slidebox_img_more', 'slidebox_img_less');

