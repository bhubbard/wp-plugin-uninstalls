#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'elementskit_options'
wp option delete 'elements_kit_onboard_status'
wp option delete 'mst_favorite_templates'
wp option delete 'metst_pages'
wp option delete 'metst_medias'
wp option delete 'metst_is_install'
wp option delete 'metst_header_footer'
wp option delete 'metst_menu'
wp option delete 'mst_onboard_status'
wp option delete 'mst_onboard_email'
wp option delete 'mst_onboard_data'
wp option delete 'gutenkit_settings_list'
wp option delete 'elementor_unfiltered_files_upload'
wp option delete 'metst_activation_redirect'
wp option delete 'metst_plugin_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'elementskit_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'elementskit_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'elementskit_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'elementskit_template_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'elementskit_template_activation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'elementskit_template_activation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'elementskit_template_activation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'elementskit_template_activation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'elementskit_template_condition_a'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'elementskit_template_condition_a'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'elementskit_template_condition_a'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'elementskit_template_condition_a'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_media_file_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_media_file_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_media_file_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_media_file_hash'"
