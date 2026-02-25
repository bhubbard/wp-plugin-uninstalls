#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tscp_cron_executed'
wp option delete 'tscp_post_types'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tscp_should_expire'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tscp_should_expire'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tscp_should_expire'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tscp_should_expire'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tscp_expires'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tscp_expires'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tscp_expires'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tscp_expires'"
