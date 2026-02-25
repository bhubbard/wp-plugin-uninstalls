-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('blhp_bg_color', 'blhp_title_color', 'blhp_excerpt_color', 'blhp_link_color');

