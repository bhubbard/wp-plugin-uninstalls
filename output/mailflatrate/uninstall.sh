#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mailflatrate-successfully-subscribeed'
wp option delete 'mailflatrate-invalid-email-address'
wp option delete 'mailflatate_already_subscribed'
wp option delete 'mailflatrate-agree_to_terms'
wp option delete 'missing-email-address'
wp option delete 'data-protection'
wp option delete 'mailflatrate_public_key'
wp option delete 'mailflatrate_private_key'
wp option delete 'mailflatrate_sync_status_text'
wp option delete 'mailflatrate-sync-list-export'
wp option delete 'mailflatrate-sync-sel_import_into'
wp option delete 'mailflatrate-sync-fieldEmail'
wp option delete 'mailflatrate-sync-fieldfirstname'
wp option delete 'mailflatrate-sync-fieldlastname'
wp option delete 'mailflatrate_form_code'
wp option delete 'mailflatrate-list'
wp option delete 'mailflatrate-successfully-subscribeed-color'
wp option delete 'mailflatrate-agree_to_terms-color'
wp option delete 'mailflatrate-invalid-email-address-color'
wp option delete 'mailflatrate-field-missing'
wp option delete 'mailflatate_already_subscribed-color'
wp option delete 'mailflatrate_form_error'
wp option delete 'mailflatrate_form_unsubscribed'
wp option delete 'mailflatrate_form_not_subscribed'
wp option delete 'mailflatrate_form_no_lists_selected'
wp option delete 'missing-email-address-color'
wp option delete 'data-protection-color'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'display_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'display_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'display_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'display_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
