-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('clk_op_min_price', 'clk_cart_pos', 'clk_op_is_in_category_page', 'clk_token', 'clk_max_amount', 'clk_is_show_no_price', 'clk_op_button_design', 'clk_has_benefits_page', 'clk_op_is_at_checkout', 'clk_op_position', 'clk_op_is_in_cart', 'clk_op_max_price', 'clk_op_redurl', 'clk_op_btn_style_mobile', 'clk_op_btn_style_desktop', 'clk_op_max_price_limit');

