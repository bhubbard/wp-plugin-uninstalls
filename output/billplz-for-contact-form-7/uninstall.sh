#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bcf7_general_settings'
wp option delete 'bcf7_api_options'
wp option delete 'bcf7_email_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_additional_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_additional_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_additional_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_additional_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_form'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_form'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_form'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_form'"
