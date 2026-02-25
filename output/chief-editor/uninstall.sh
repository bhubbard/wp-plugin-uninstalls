#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'chiefed_post_taxonomies'
wp option delete 'chiefed_default_type'
wp option delete 'chiefed_chiefeditor_option'
wp option delete 'chief_editor_option'
wp option delete 'chiefed_shots_cpt_name'
wp option delete 'email_recipients'
wp option delete 'chiefed_sender_email'
wp option delete 'chiefed_sender_name'
wp option delete 'sender_email'
wp option delete 'sender_name'
wp option delete 'email_content-textarea'
wp option delete 'custom_stats_start_date'
wp option delete 'custom_stats_end_date'
wp option delete 'checkbox_element_callback'
wp option delete 'BlogMetricsOptions'
wp option delete 'chiefed_xml_exports_path_search'
wp option delete 'chiefed_xml_exports_path_replace'
wp option delete 'chiefed_wwf_statuses_and_colors'
wp option delete 'chiefed_pwf_statuses_and_colors'
wp option delete 'chiefed_categories_and_colors'
wp option delete 'chiefed_time_filters'
wp option delete 'chiefed_xml_exports_enabled'
wp option delete 'chiefed_xml_exports_dir'
wp option delete 'chiefed_manager_email_template'
wp option delete 'chiefed_enable_notifications'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_custom_attachment'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_custom_attachment'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_custom_attachment'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_custom_attachment'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'informations_complmentaires_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'informations_complmentaires_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'informations_complmentaires_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'informations_complmentaires_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
