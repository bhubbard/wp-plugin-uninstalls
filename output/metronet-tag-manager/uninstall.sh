#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'metronet_tag_manager'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gtm_vars'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gtm_vars'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gtm_vars'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gtm_vars'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gtm_body_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gtm_body_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gtm_body_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gtm_body_notice'"
