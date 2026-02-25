#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vx_crm_forms_ids'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_meta'"
wp option delete 'vxcf_all_forms'
wp option delete 'fs_contact_global'
wp option delete 'crm_perks_upload_folder'
wp option delete 'cforms_settings'
wp option delete 'vxcf_all_fields'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_updates'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_install_data'"
wp option delete 'recently_activated'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'print_note_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_msg'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_msgs'"
wp option delete 'vxcf_form_dissmiss_notice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_form'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_form'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_form'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_form'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_g_feedback_shortcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_g_feedback_shortcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_g_feedback_shortcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_g_feedback_shortcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__elementor_forms_snapshot'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__elementor_forms_snapshot'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__elementor_forms_snapshot'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__elementor_forms_snapshot'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
