#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'debughawk_config'

# Delete Transients
wp transient delete 'debughawk_activation_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'debughawk_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'debughawk_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'debughawk_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'debughawk_notice_dismissed'"
