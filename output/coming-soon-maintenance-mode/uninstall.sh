#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'csmm_current_version'
wp option delete 'csmm_last_version'
wp option delete 'csmm_settings'
wp option delete 'csmm_templates'
wp option delete 'csmm_content'
wp option delete 'csmm_social_media'
wp option delete 'csmm_more'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_custom_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_custom_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_custom_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_custom_notice'"
