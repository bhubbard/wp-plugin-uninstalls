#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cptb_custom_post_types'
wp option delete 'cptb_flush_rewrite_rules'
wp option delete 'cptb_custom_taxonomies'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cptb_notice_dismissed_at'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cptb_notice_dismissed_at'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cptb_notice_dismissed_at'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cptb_notice_dismissed_at'"
