#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mizan_importer_do_activation_redirect'
wp option delete 'hfe_start_onboarding'
wp option delete 'hfe_onboarding_triggered'
wp option delete 'sbi_statuses'
wp option delete 'sbi_plugin_do_activation_redirect'
wp option delete 'charitable_started_onboarding'
wp option delete 'mizan_importer_pro_theme_validation_status'
wp option delete 'mizan_importer_pro_suspension_status'
wp option delete 'wp_pro_theme_key'
wp option delete 'mizan_importer_plugin_license_key'
wp option delete 'recently_activated'

# Delete Transients
wp transient delete '_epl_activation_redirect'
wp transient delete 'charitable_activation_redirect'
wp transient delete 'charitable_install'
wp transient delete 'mizan_importer_free_theme_activation_redirect'
wp transient delete 'elementor_activation_redirect'
wp transient delete 'update_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
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
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_version'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_css'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_css'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_css'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_css'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'mizan_demo_importer_tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'mizan_demo_importer_tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'mizan_demo_importer_tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'mizan_demo_importer_tgmpa_dismissed_notice_%'"
