#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'demo_reset_options'
wp option delete 'demo_reset_settings'
wp option delete 'demo_reset_runners'
wp option delete 'demo_reset_reset_history'
wp option delete 'demo_reset_info_bar'
wp option delete 'demo_reset_last_triggers'
wp option delete 'demo_reset_active_plugins'
wp option delete 'rewrite_rules'
wp option delete 'demo_reset_last_session_tokens'
wp option delete '_site_transient_update_plugins'
wp option delete '_site_transient_update_themes'
wp option delete '_site_transient_update_core'

# Delete Transients
wp transient delete 'update_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'session_tokens'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'session_tokens'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'session_tokens'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'session_tokens'"
