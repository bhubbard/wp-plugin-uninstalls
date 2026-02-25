#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'alg_wc_cp_cl_use_modal'
wp option delete 'alg_wc_cp_default_btn_title'
wp option delete 'alg_wc_cp_enable'
wp option delete 'alg_wc_cp_cl_widget_link'
wp option delete 'alg_wc_cp_fontawesome'
wp option delete 'alg_wc_cp_default_btn_single'
wp option delete 'alg_wc_cp_default_btn_single_pos'
wp option delete 'alg_wc_cp_default_btn_single_priority'
wp option delete 'alg_wc_cp_default_btn_loop'
wp option delete 'alg_wc_cp_default_btn_loop_priority'
wp option delete 'alg_wc_cp_version'
wp option delete 'alg_wc_cp_cl_cols'
wp option delete 'alg_wc_cp_page_id'
wp option delete 'alg_wc_cp_cl_field_image'
wp option delete 'alg_wc_cp_cl_field_title'
wp option delete 'alg_wc_cp_cl_modal_title'
wp option delete 'alg_wc_cp_cl_modal_subtitle'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_reset'"
wp option delete 'woocommerce_weight_unit'
wp option delete 'alg_wc_cp_cl_empty_text'

