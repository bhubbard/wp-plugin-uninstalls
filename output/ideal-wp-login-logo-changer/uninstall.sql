-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('iwllc_wp_logo_url', 'iwllc_wp_set_bg', 'iwllc_wp_bg_color', 'iwllc_wp_bg_img_url', 'iwllc_wp_logo_link', 'iwllc_wp_link_color', 'iwllc_wp_link_hover_color', 'iwllc_wp_logo_width', 'iwllc_wp_logo_height');

