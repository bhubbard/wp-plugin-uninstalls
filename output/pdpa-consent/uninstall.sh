#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pdpa-consent-page-id'
wp option delete 'pdpa_option'
wp option delete 'Activated_Plugin'
wp option delete 'pdpa-consent-user_privacy-page'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pdpa_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pdpa_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pdpa_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pdpa_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pdpa_status_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pdpa_status_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pdpa_status_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pdpa_status_time'"
