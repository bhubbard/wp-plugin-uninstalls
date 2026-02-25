#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'enq_me_user_licence'
wp option delete 'enq_me_root_dependancy'
wp option delete 'enq_me_assets_to_enqueue'
wp option delete 'enq_me_assets_ids_to_enqueue'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'enq_me_last_modified'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'enq_me_last_modified'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'enq_me_last_modified'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'enq_me_last_modified'"
