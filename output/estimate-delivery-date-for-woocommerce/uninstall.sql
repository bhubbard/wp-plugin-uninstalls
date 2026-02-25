-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pi_edd_do_activation_redirect', 'pi_edd_holidays', 'pi_defaul_shipping_zone', 'pi_edd_translate_message', 'pi_edd_use_default_preparation_days', 'pi_general_date_format', 'pi_edd_min_max', 'pi_show_single_estimate_by_ajax', 'pi_product_page_position', 'pi_loop_page_position', 'pi_general_range', 'pi_show_product_loop_page', 'pi_show_cart_page', 'pi_show_checkout_page', 'pi_edd_cart_page_show_single_estimate', 'pi_edd_show_overall_estimate_in_email', 'pi_edd_show_overall_estimate_in_order_success_page', 'pi_edd_enable_estimate', 'pi_shipping_breakup_time', 'pi_edd_min_preparation_days', 'pi_product_padding', 'pi_loop_padding', 'pi_cart_padding', 'pi_product_estimate_font_size', 'pi_loop_estimate_font_size', 'pi_cart_estimate_font_size', 'pi_product_border', 'pi_loop_border', 'pi_cart_border', 'pi_product_border_radius', 'pi_loop_border_radius', 'pi_cart_border_radius', 'pi_product_bg_color', 'pi_product_text_color', 'pi_product_text_align', 'pi_loop_bg_color', 'pi_loop_text_color', 'pi_loop_text_align', 'pi_cart_bg_color', 'pi_cart_text_color', 'pi_cart_text_align', 'pi_edd_default_min_shipping_days', 'pi_edd_default_max_shipping_days', 'pi_show_product_page', 'pi_product_page_text', 'pi_product_page_text_range', 'pi_loop_page_text', 'pi_loop_page_text_range', 'pi_cart_page_text', 'pi_cart_page_text_range');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('product_preparation_time', 'pisol_edd_use_variation_preparation_time', 'pisol_preparation_days', 'min_days', 'max_days');
DELETE FROM wp_usermeta WHERE meta_key IN ('product_preparation_time', 'pisol_edd_use_variation_preparation_time', 'pisol_preparation_days', 'min_days', 'max_days');
DELETE FROM wp_termmeta WHERE meta_key IN ('product_preparation_time', 'pisol_edd_use_variation_preparation_time', 'pisol_preparation_days', 'min_days', 'max_days');
DELETE FROM wp_commentmeta WHERE meta_key IN ('product_preparation_time', 'pisol_edd_use_variation_preparation_time', 'pisol_preparation_days', 'min_days', 'max_days');

