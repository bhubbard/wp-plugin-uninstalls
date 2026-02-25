-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pisol_smdsw_shipping_method_style', 'pisol_smdsw_override_custom_theme_template', 'pisol_smdsw_show_zero_for_free_shipping', 'pisol_smdsw_show_selected_shipping_method', 'pisol_smdsw_shipping_method_order', 'pisol_smdsw_single_shipping_option', 'pisol_smdsw_exclude_local_pickup_removal', 'pisol_smdsw_disable_auto_selection', 'pisol_smdsw_background_color', 'pisol_smdsw_shipping_method_icon', 'pisol_smdsw_show_system_name', 'pisol_smdsw_selectwoo', 'pisol_spdsw_recorded_shipping_methods', 'pi_smdsw_do_activation_redirect');

