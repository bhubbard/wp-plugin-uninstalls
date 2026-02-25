#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aotfw_done_runonce_tasks'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aotfw_done_runonce_tasks'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aotfw_done_runonce_tasks'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aotfw_done_runonce_tasks'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'trash_reason'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'trash_reason'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'trash_reason'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'trash_reason'"
