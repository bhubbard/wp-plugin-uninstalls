-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wmbm_bg_color', 'wmbm_icon_color', 'wmbm_active_icon_color', 'wmbm_cart_bubble_color', 'wmbm_cart_bubble_text_color', 'wmbm_border_radius', 'wmbm_glassmorphism', 'woocommerce_myaccount_page_id', 'wmbm_hide_on_scroll', 'wmbm_item2_type');

