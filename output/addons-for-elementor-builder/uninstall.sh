#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'elementor_disable_color_schemes'
wp option delete 'elementor_disable_typography_schemes'
wp option delete '_afeb_activation_redirect'
wp option delete 'afeb-widgets-status'
wp option delete 'afeb-3rdpt-widgets-status'
wp option delete 'elementor_active_kit'
wp option delete 'afeb-extensions-status'
wp option delete '_afebp_ajax_verify_recaptcha'
wp option delete 'afeb-settings'
wp option delete 'st_attachments'
wp option delete '_afeb_installation_time'
wp option delete '_afeb_todo_flush'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_afeb_document_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_afeb_document_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_afeb_document_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_afeb_document_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'afeb_page_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'afeb_page_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'afeb_page_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'afeb_page_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'afeb_form_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'afeb_form_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'afeb_form_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'afeb_form_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'afeb_form_fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'afeb_form_fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'afeb_form_fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'afeb_form_fields'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'afeb_form_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'afeb_form_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'afeb_form_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'afeb_form_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'afeb_user_ip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'afeb_user_ip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'afeb_user_ip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'afeb_user_ip'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'afeb_user_agent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'afeb_user_agent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'afeb_user_agent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'afeb_user_agent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_afeb_demo_import_item'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_afeb_demo_import_item'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_afeb_demo_import_item'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_afeb_demo_import_item'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'afeb_advanced_menu_activation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'afeb_advanced_menu_activation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'afeb_advanced_menu_activation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'afeb_advanced_menu_activation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'afeb_advanced_menu_icon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'afeb_advanced_menu_icon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'afeb_advanced_menu_icon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'afeb_advanced_menu_icon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_elementor_settings_for_preview_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_elementor_settings_for_preview_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_elementor_settings_for_preview_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_elementor_settings_for_preview_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_elementor_settings_for_editor_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_elementor_settings_for_editor_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_elementor_settings_for_editor_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_elementor_settings_for_editor_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
