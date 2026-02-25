#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'avangpress_flash_messages'
wp option delete 'avangpress'
wp option delete 'avangpress_mail_list_ids'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'avangpress_mail_list_%'"
wp option delete 'avangpress_default_form_id'
wp option delete 'avangpress_form_stylesheets'
wp option delete 'avangpress_groupings_map'
wp option delete 'avangpress_integrations'

# Delete Transients
wp transient delete 'avangpress_api_key_notice_dismissed'
wp transient delete 'update_plugins'
wp transient delete 'avangpress_list_counts'

# Clear Cron Jobs
wp cron event delete 'avangpress_refresh_mail_lists'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'avangpress_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'avangpress_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'avangpress_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'avangpress_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'text_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'text_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'text_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'text_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'avangpress_optin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'avangpress_optin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'avangpress_optin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'avangpress_optin'"
