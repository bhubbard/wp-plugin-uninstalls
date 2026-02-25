#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aniksmta_settings'
wp option delete 'aniksmta_install_date'
wp option delete 'aniksmta_review_dismissed'
wp option delete 'aniksmta_review_done'

# Delete Transients
wp transient delete 'aniksmta_cache'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aniksmta_disable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aniksmta_disable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aniksmta_disable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aniksmta_disable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aniksmta_heading_levels'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aniksmta_heading_levels'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aniksmta_heading_levels'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aniksmta_heading_levels'"
