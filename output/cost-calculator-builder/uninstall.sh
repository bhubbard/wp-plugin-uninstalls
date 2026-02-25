#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ccb_feedback_added'
wp option delete 'ccb__show_welcome_page'
wp option delete 'calc_render_templates'
wp option delete 'ccb_lock_templates'
wp option delete 'calc_templates_favorites'
wp option delete 'ccb_lock_templates_email'
wp option delete 'ccb_quick_tour_type'
wp option delete 'ccb_appearance_presets'
wp option delete 'calc_hint_skipped'
wp option delete 'calc_allow_hint'
wp option delete 'ccb_general_settings'
wp option delete 'ccb_appearance_hide_notice'
wp option delete 'calc_sample_calculator'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'stm_ccb_form_settings_%'"
wp option delete 'ccb_demo_import_content'
wp option delete 'stm_calc_created'
wp option delete 'ccb_version'
wp option delete 'calc_db_updates'
wp option delete 'ccb_version_from'
wp option delete 'ccb_orders_details_settings'
wp option delete 'ccb_orders_table_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'calc_meta_data_order_%'"
wp option delete 'ccb_pdf_tool_manager_template_key'
wp option delete 'ccb_pdf_templates'
wp option delete 'stm_ccb_woocommerce_calcs'
wp option delete 'ccb_installed'
wp option delete 'ccb_canceled'
wp option delete 'ccb_version_control'
wp option delete 'ccb__redirect_active'
wp option delete '_site_transient_envato_market_themes'
wp option delete 'popup_data'
wp option delete 'notices_data'
wp option delete 'notification_data'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'stm_mailchimp_integration_member_data_%'"
wp option delete 'fs_accounts'

# Delete Transients
wp transient delete 'stm_cost-calculator-builder_single_notice_setting'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_custom_%' OR option_name LIKE '_site_transient_custom_%'"
wp transient delete 'update_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_notice_setting' OR option_name LIKE '_site_transient_%_notice_setting'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_themes' OR option_name LIKE '_site_transient_%_themes'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wp_org_%' OR option_name LIKE '_site_transient_wp_org_%'"

# Clear Cron Jobs
wp cron event delete 'ccb_init_mixpanel_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'calc_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'calc_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'calc_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'calc_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'plugin_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'plugin_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'plugin_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'plugin_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'icon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'icon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'icon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'icon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'category'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'calc_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'calc_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'calc_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'calc_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'info'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'info'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'info'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'info'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stm-name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stm-name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stm-name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stm-name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stm-formula'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stm-formula'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stm-formula'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stm-formula'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stm-conditions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stm-conditions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stm-conditions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stm-conditions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'calc_saved'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'calc_saved'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'calc_saved'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'calc_saved'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stm-fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stm-fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stm-fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stm-fields'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ccb_calc_preset_idx'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ccb_calc_preset_idx'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ccb_calc_preset_idx'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ccb_calc_preset_idx'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ccb_savepoint_list'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ccb_savepoint_list'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ccb_savepoint_list'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ccb_savepoint_list'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ccb-appearance'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ccb-appearance'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ccb-appearance'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ccb-appearance'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'slug'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'slug'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'slug'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'slug'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'form_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'form_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'form_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'form_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
