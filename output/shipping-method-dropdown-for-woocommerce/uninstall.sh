#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pisol_smdsw_shipping_method_style'
wp option delete 'pisol_smdsw_override_custom_theme_template'
wp option delete 'pisol_smdsw_show_zero_for_free_shipping'
wp option delete 'pisol_smdsw_show_selected_shipping_method'
wp option delete 'pisol_smdsw_shipping_method_order'
wp option delete 'pisol_smdsw_single_shipping_option'
wp option delete 'pisol_smdsw_exclude_local_pickup_removal'
wp option delete 'pisol_smdsw_disable_auto_selection'
wp option delete 'pisol_smdsw_background_color'
wp option delete 'pisol_smdsw_shipping_method_icon'
wp option delete 'pisol_smdsw_show_system_name'
wp option delete 'pisol_smdsw_selectwoo'
wp option delete 'pisol_spdsw_recorded_shipping_methods'
wp option delete 'pi_smdsw_do_activation_redirect'

