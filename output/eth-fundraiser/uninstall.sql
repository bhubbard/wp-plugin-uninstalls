-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('eth_fundraiser_version', 'eth_fundraiser_address', 'eth_fundraiser_banner_background', 'eth_fundraiser_title', 'eth_fundraiser_title_color', 'eth_fundraiser_svg_circle', 'eth_fundraiser_svg_eth_icon', 'eth_fundraiser_button_background', 'eth_fundraiser_close_btn_color', 'eth_fundraiser_eth_price_color', 'eth_fundraiser_banner', 'eth_fundraiser_button_text');

