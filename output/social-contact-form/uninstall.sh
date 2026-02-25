#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'formychat_country_code'
wp option delete 'formychat_wc_shop'
wp option delete 'formychat_wc_product'
wp option delete 'formychat_custom_css'
wp option delete 'formychat_integration_fluent-crm'
wp option delete 'formychat_integration_mailchimp'
wp option delete 'formychat_google_sheets'
wp option delete 'formychat_integration_google_sheets'
wp option delete 'scf-setup-run'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'formychat_integration_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"
wp option delete 'formychat_integration_fluent-crm_lists'
wp option delete 'formychat_integration_fluent-crm_tags'
wp option delete 'formychat_integration_fluent-crm_fields_mapping'
wp option delete 'formychat_widget_table_created'
wp option delete 'formychat_has_first_widget'
wp option delete 'formychat_whatsapp'
wp option delete 'formychat_icon'
wp option delete 'formychat_call_to_action'
wp option delete 'formychat_form'
wp option delete 'formychat_contact_form_7'
wp option delete 'formychat_greetings'
wp option delete 'formychat_target'
wp option delete 'formychat_enabled'

# Delete Transients
wp transient delete 'formychat_google_sheets_just_connected'

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_formy_chat_configuration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_formy_chat_configuration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_formy_chat_configuration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_formy_chat_configuration'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
