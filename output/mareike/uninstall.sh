#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mareike_use_webdav'
wp option delete 'mareike_webdav_host'
wp option delete 'mareike_webdav_user'
wp option delete 'mareike_webdav_pass'
wp option delete 'mareike_receipt_uploaddir'
wp option delete 'mareike_sepa_settings_account_owner'
wp option delete 'mareike_sepa_settings_account_iban'
wp option delete 'mareike_sepa_settings_account_bic'
wp option delete 'mareike_last_version'
wp option delete 'page_used_for_state'

# Clear Cron Jobs
wp cron event delete 'mareike/costunit/autoclose'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'iban'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'iban'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'iban'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'iban'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'account_owner'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'account_owner'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'account_owner'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'account_owner'"
