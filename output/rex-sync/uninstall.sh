#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rex_sync_lite_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rsc.id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rsc.id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rsc.id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rsc.id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rsc.agent_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rsc.agent_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rsc.agent_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rsc.agent_id'"
