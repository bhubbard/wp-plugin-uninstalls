#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'formative_rating_dismissed'
wp option delete 'formative_activation_time'
wp option delete 'formative_recaptcha_version'
wp option delete 'formative_recaptcha_v2_site_key'
wp option delete 'formative_recaptcha_v2_secret_key'
wp option delete 'formative_recaptcha_v3_site_key'
wp option delete 'formative_recaptcha_v3_secret_key'
wp option delete 'formative_email_from_name'
wp option delete 'formative_email_from_address'
wp option delete 'formative_store_entries'
wp option delete 'formative_delete_data'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'formative_%'"
wp option delete 'formative_db_version'
wp option delete 'formative_color_theme'

# Delete Transients
wp transient delete 'formative_activation_notice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_quiz_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_quiz_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_quiz_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_quiz_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_formative_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_formative_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_formative_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_formative_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_formative_fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_formative_fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_formative_fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_formative_fields'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_form_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_form_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_form_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_form_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_entry_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_entry_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_entry_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_entry_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_quiz_score'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_quiz_score'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_quiz_score'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_quiz_score'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_quiz_percentage'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_quiz_percentage'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_quiz_percentage'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_quiz_percentage'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_user_ip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_user_ip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_user_ip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_user_ip'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_user_agent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_user_agent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_user_agent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_user_agent'"
