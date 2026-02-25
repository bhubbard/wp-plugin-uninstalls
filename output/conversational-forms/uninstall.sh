#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_wfb_clippy_first'
wp option delete '_qcformbuilder_forms_styleincludes'
wp option delete '_qcformbuilder_forms_entry_perpage'
wp option delete 'qcformbuilder_forms_api_token_secret'
wp option delete 'sidebars_widgets'
wp option delete 'widget_qcformbuilder_forms_widget'
wp option delete 'WFB_DB'
wp option delete '_qcformbuilderforms_lastupdate'
wp option delete 'wordpress_api_key'
wp option delete '_qcformbuilder_forms_tracking_allowed'
wp option delete '_qcformbuilder_forms'
wp option delete '_qcformbuilder_forms_forms'
wp option delete 'qlcd_wp_chatbot_admin_email'
wp option delete 'qlcd_wp_chatbot_conversation_details'

# Delete Transients
wp transient delete 'update_plugins'

# Clear Cron Jobs
wp cron event delete 'qcformbuilder_forms_tracking_send_rows'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'wfb_pointer_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'wfb_pointer_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'wfb_pointer_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wfb_pointer_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qcformbuilder_forms_activation_ignore_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qcformbuilder_forms_activation_ignore_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qcformbuilder_forms_activation_ignore_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qcformbuilder_forms_activation_ignore_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wfb_pointer_add_element'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wfb_pointer_add_element'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wfb_pointer_add_element'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wfb_pointer_add_element'"
