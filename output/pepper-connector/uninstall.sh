#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pepper_settings_option_name'
wp option delete 'pepper_settings_option_name_key'
wp option delete 'pepper_settings_option_name_webhook_key'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pepper_signatured_post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pepper_signatured_post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pepper_signatured_post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pepper_signatured_post'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'company_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'company_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'company_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'company_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'integrated_account_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'integrated_account_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'integrated_account_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'integrated_account_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'assignment_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'assignment_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'assignment_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'assignment_id'"
