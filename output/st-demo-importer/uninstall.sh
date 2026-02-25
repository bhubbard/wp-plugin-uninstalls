#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'elementor_unfiltered_files_upload'
wp option delete 'elementor_experiment-e_optimized_control_loading'
wp option delete 'elementor_active_kit'
wp option delete 'st_demo_importer_plugin_activated'
wp option delete 'st_demo_importer_pro_theme_validation_status'
wp option delete 'stdi_pro_theme_key'
wp option delete 'st_demo_importer_plugin_license_key'
wp option delete 'stdi_recently_activated'

# Delete Transients
wp transient delete 'stdi_theme_activation_redirect'
wp transient delete 'elementor_activation_redirect'
wp transient delete 'update_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stea_theme_builder_sticky'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stea_theme_builder_sticky'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stea_theme_builder_sticky'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stea_theme_builder_sticky'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stea_theme_builder_target_include_locations'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stea_theme_builder_target_include_locations'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stea_theme_builder_target_include_locations'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stea_theme_builder_target_include_locations'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stea_theme_builder_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stea_theme_builder_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stea_theme_builder_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stea_theme_builder_template_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'elementskit_template_activation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'elementskit_template_activation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'elementskit_template_activation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'elementskit_template_activation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'elementskit_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'elementskit_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'elementskit_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'elementskit_template_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'elementskit_template_condition_a'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'elementskit_template_condition_a'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'elementskit_template_condition_a'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'elementskit_template_condition_a'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_version'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_css'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_css'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_css'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_css'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'st_demo_importer_tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'st_demo_importer_tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'st_demo_importer_tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'st_demo_importer_tgmpa_dismissed_notice_%'"
