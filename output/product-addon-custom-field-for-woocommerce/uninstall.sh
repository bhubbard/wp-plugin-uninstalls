#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'prafe_settings'
wp option delete 'prafe_installed'
wp option delete 'prafe_version'

# Delete Transients
wp transient delete 'prafe_wc_missing_notice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'form_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'form_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'form_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'form_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'prafe_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'prafe_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'prafe_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'prafe_version'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'custom_form'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'custom_form'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'custom_form'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'custom_form'"
