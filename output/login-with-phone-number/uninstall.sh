#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'idehweb_lwp_settings'
wp option delete 'idehweb_lwp_settings_styles'
wp option delete 'idehweb_lwp_settings_localization'
wp option delete 'idehweb_lwp_settings_registration_fields'
wp option delete 'lwp_activation_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'phone_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'phone_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'phone_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'phone_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'userRegisteredNow'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'userRegisteredNow'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'userRegisteredNow'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'userRegisteredNow'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'updatedPass'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'updatedPass'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'updatedPass'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'updatedPass'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'activation_code_timestamp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'activation_code_timestamp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'activation_code_timestamp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'activation_code_timestamp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'temporary_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'temporary_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'temporary_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'temporary_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'activation_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'activation_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'activation_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'activation_code'"
