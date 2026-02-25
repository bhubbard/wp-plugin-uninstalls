#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'notifish_credentials_notice_dismissed'
wp option delete 'notifish_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_notifish_meta_value_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_notifish_meta_value_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_notifish_meta_value_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_notifish_meta_value_key'"
