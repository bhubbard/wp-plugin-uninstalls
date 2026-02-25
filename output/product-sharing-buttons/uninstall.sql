-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('psb_display_product_share_button', 'psb_buttons_visible_position', 'psb_button_design', 'blank_tab_enable', 'psb_social_buttons');

