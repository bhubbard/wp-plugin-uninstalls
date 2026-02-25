-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_maxmind_geolocation_license_key', 'woocommerce_default_customer_address', 'pi_ppscw_address_form_working', 'pi_ppscw_details_saved', 'pi_ppscw_enable_badge', 'pi_ppscw_badge_position', 'pi_ppscw_badge_bg_color', 'pi_ppscw_badge_text_color', 'pi_ppscw_badge_text', 'pi_ppscw_badge_icon', 'pi_ppscw_popup_update_address_title', 'pi_ppscw_address_form_layout', 'pi_ppscw_popup_header_bg_color', 'pi_ppscw_popup_header_text_color', 'pi_ppscw_popup_title', 'pi_ppscw_select_variation_msg', 'pi_ppscw_no_address_added_yet', 'pi_ppscw_auto_calculation', 'pi_ppscw_load_location_by_ajax', 'pi_ppscw_disable_view_shipping_method', 'pi_ppscw_calc_position', 'pi_ppscw_result_position', 'pi_ppscw_open_drawer_button_text', 'pi_ppscw_update_button_text', 'pi_ppscw_ignore_cart_product', 'pi_ppscw_consider_quantity_field', 'pi_ppscw_no_shipping_methods_msg', 'pi_ppscw_above_shipping_methods', 'pi_ppscw_free_shipping_price', 'woocommerce_ship_to_destination', 'pi_ppscw_show_estimate_date', 'pi_ppscw_show_estimate_as_per', 'pi_ppscw_msg_background_color', 'pi_ppscw_msg_font_color', 'pi_ppscw_msg_font_color_shipping_method', 'pi_ppscw_msg_font_color_shipping_cost', 'pi_ppscw_calculate_shipping_bg_color', 'pi_ppscw_calculate_shipping_text_color', 'pi_ppscw_update_address_bg_color', 'pi_ppscw_update_address_text_color', 'pi_ppscw_remove_country_add_form', 'pi_ppscw_remove_state_add_form', 'pi_ppscw_remove_city_add_form', 'pi_ppscw_remove_postcode_add_form', 'pi_ppscw_default_form_display', 'pi_ppscw_remove_country', 'pi_ppscw_remove_state', 'pi_ppscw_remove_city', 'pi_ppscw_remove_postcode');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('pisol_disable_shipping_calculator');
DELETE FROM wp_usermeta WHERE meta_key IN ('pisol_disable_shipping_calculator');
DELETE FROM wp_termmeta WHERE meta_key IN ('pisol_disable_shipping_calculator');
DELETE FROM wp_commentmeta WHERE meta_key IN ('pisol_disable_shipping_calculator');

