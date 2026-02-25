#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cc_post_republisher_settings'
wp option delete 'classic-editor-replace'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'creative_commons_post_republisher_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'creative_commons_post_republisher_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'creative_commons_post_republisher_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'creative_commons_post_republisher_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'creative_commons_post_republisher_license-type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'creative_commons_post_republisher_license-type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'creative_commons_post_republisher_license-type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'creative_commons_post_republisher_license-type'"
