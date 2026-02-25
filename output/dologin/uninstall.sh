#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'dologin.%'"
wp option delete 'dologin_test'

# Delete Transients
wp transient delete 'dologin_activation_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'phone_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'phone_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'phone_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'phone_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '2fa'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '2fa'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '2fa'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '2fa'"
