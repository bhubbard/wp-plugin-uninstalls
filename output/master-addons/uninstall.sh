#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_crop'"
wp option delete 'jltma_activation_time'
wp option delete '_master_addons_version'
wp option delete 'jltma_white_label_settings'
wp option delete 'maad_el_save_settings'
wp option delete 'ma_el_extensions_save_settings'
wp option delete 'ma_el_third_party_plugins_save_settings'
wp option delete 'jltma_icons_library_save_settings'
wp option delete 'ma_el_update_redirect'
wp option delete 'jltma_api_save_settings'
wp option delete 'jltma_comments'
wp option delete 'active_sitewide_plugins'
wp option delete 'jltma_custom_widget_categories'
wp option delete 'jltma_widget_categories'
wp option delete 'jltma_custom_widgets'
wp option delete 'jltma_what_we_collect'
wp option delete 'jltma_sheet_promo_data'
wp option delete 'jltma_sheet_promo_data_hash'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'jltma_variation_imported_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_id'"
wp option delete 'jltma_demo_kit_imported'
wp option delete 'elementor_active_kit'
wp option delete 'jltma_demo_settings_imported'
wp option delete 'elementor_scheme_color'
wp option delete 'elementor_scheme_typography'
wp option delete 'elementor_cpt_support'
wp option delete 'masteraddons_options'
wp option delete 'jltma_404_page_id'
wp option delete 'jltma-import-kit-id'
wp option delete 'elementor_experiment-e_local_google_fonts'
wp option delete 'elementor_viewport_lg'
wp option delete 'elementor_viewport_md'
wp option delete 'elementor_viewport_sm'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_liquid_chatgpt__%' OR option_name LIKE '_site_transient_liquid_chatgpt__%'"
wp transient delete 'ma_el_update_redirect'
wp transient delete 'settings_errors'
wp transient delete 'jltma_demo_dependencies_imported'
wp transient delete 'jltma_import_page_mappings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_master_addons_rollbacks_%' OR option_name LIKE '_site_transient_master_addons_rollbacks_%'"
wp transient delete 'update_plugins'
wp transient delete 'jltma_template_kits_last_cache_update'
wp transient delete 'jltma_template_kits'
wp transient delete 'jltma_template_kits_meta'
wp transient delete 'jltma_kit_categories'
wp transient delete 'jltma_kit_categories_meta'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_jltma_kit_%' OR option_name LIKE '_site_transient_jltma_kit_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_jltma_kit_templates_%' OR option_name LIKE '_site_transient_jltma_kit_templates_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_jltma_kit_manifest_%' OR option_name LIKE '_site_transient_jltma_kit_manifest_%'"
wp transient delete 'jltma_templates_last_cache_update'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_jltma_cache_access_%' OR option_name LIKE '_site_transient_jltma_cache_access_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_jltma-plugin-info-%' OR option_name LIKE '_site_transient_jltma-plugin-info-%'"
wp transient delete 'fs_snooze_period'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'jltma_sheet_promo_data_remote_sync'
wp cron event delete 'jltma_template_kits_cache_update'
wp cron event delete 'jltma_templates_cache_update'
wp cron event delete 'jltma_background_preload'
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'master_template_activation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'master_template_activation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'master_template_activation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'master_template_activation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'master_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'master_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'master_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'master_template_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'master_template_jltma_hf_conditions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'master_template_jltma_hf_conditions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'master_template_jltma_hf_conditions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'master_template_jltma_hf_conditions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'master_template_jltma_hfc_singular'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'master_template_jltma_hfc_singular'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'master_template_jltma_hfc_singular'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'master_template_jltma_hfc_singular'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'master_template_jltma_hfc_singular_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'master_template_jltma_hfc_singular_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'master_template_jltma_hfc_singular_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'master_template_jltma_hfc_singular_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'master_template_jltma_hfc_post_types_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'master_template_jltma_hfc_post_types_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'master_template_jltma_hfc_post_types_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'master_template_jltma_hfc_post_types_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'master_template_conditions_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'master_template_conditions_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'master_template_conditions_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'master_template_conditions_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'jltma_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'jltma_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'jltma_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'jltma_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jltma_like_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jltma_like_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jltma_like_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jltma_like_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jltma_dislike_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jltma_dislike_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jltma_dislike_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jltma_dislike_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_jltma_widget_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_jltma_widget_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_jltma_widget_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_jltma_widget_category'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_jltma_widget_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_jltma_widget_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_jltma_widget_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_jltma_widget_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_jltma_widget_includes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_jltma_widget_includes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_jltma_widget_includes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_jltma_widget_includes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_jltma_widget_dependencies'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_jltma_widget_dependencies'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_jltma_widget_dependencies'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_jltma_widget_dependencies'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_jltma_widget_sections'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_jltma_widget_sections'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_jltma_widget_sections'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_jltma_widget_sections'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_jltma_widget_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_jltma_widget_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_jltma_widget_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_jltma_widget_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_jltma_widget_conditions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_jltma_widget_conditions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_jltma_widget_conditions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_jltma_widget_conditions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_jltma_widget_html'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_jltma_widget_html'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_jltma_widget_html'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_jltma_widget_html'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_jltma_widget_css'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_jltma_widget_css'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_jltma_widget_css'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_jltma_widget_css'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_jltma_widget_js'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_jltma_widget_js'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_jltma_widget_js'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_jltma_widget_js'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_version'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_jltma_demo_import_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_jltma_demo_import_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_jltma_demo_import_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_jltma_demo_import_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_jltma_original_filename'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_jltma_original_filename'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_jltma_original_filename'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_jltma_original_filename'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_jltma_demo_import_item'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_jltma_demo_import_item'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_jltma_demo_import_item'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_jltma_demo_import_item'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_jltma_import_kit_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_jltma_import_kit_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_jltma_import_kit_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_jltma_import_kit_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_jltma_import_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_jltma_import_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_jltma_import_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_jltma_import_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_jltma_imported_from_kit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_jltma_imported_from_kit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_jltma_imported_from_kit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_jltma_imported_from_kit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_jltma_original_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_jltma_original_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_jltma_original_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_jltma_original_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_jltma_kit_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_jltma_kit_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_jltma_kit_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_jltma_kit_name'"
