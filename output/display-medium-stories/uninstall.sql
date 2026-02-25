-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mpost_slider', 'mpost_post_design', 'mpost_slider_design', 'mpost_background_color', 'mpost_title_color', 'mpost_desc_color', 'mpost_btn_title', 'mpost_btnbg_color', 'mpost_btn_color', 'mpost_date_format', 'mpost_default_image_radius', 'mpost_padding_type', 'mpost_default_image_padding', 'mpost_default_image_margin', 'mpost_bootstrap', 'mpost_no_post', 'mpost_container_size', 'mpost_arrows_color', 'mpost_arrows_bgcolor');

