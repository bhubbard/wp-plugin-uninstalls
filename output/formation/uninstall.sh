#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'formation_db_version'
wp option delete 'formation_options'
wp option delete 'formation_settings'
wp option delete 'formation_activation_redirect'
wp option delete 'formation_pro_status'
wp option delete 'formation_smtp_settings'
wp option delete 'formation_pmf_options'
wp option delete 'classic-editor-replace'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'formation_tooltip_stat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'formation_tooltip_stat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'formation_tooltip_stat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'formation_tooltip_stat'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'formation_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'formation_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'formation_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'formation_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'formation_other_plugin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'formation_other_plugin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'formation_other_plugin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'formation_other_plugin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'formation_form_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'formation_form_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'formation_form_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'formation_form_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'formation_fe_style'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'formation_fe_style'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'formation_fe_style'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'formation_fe_style'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'formation_prefix_classes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'formation_prefix_classes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'formation_prefix_classes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'formation_prefix_classes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'formation_views'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'formation_views'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'formation_views'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'formation_views'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
