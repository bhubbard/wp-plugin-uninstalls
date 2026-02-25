#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'findkit_enable_jwt'
wp option delete 'findkit_admin_search_show_settings_link'
wp option delete 'findkit_adminbar'
wp option delete 'findkit_project_id'
wp option delete 'findkit_api_endpoint'
wp option delete 'findkit_api_key'
wp option delete 'findkit_show_superwords_editor'
wp option delete 'findkit_show_content_no_highlight_editor'
wp option delete 'findkit_enable_live_update'
wp option delete 'findkit_override_search_form'
wp option delete 'findkit_pubkey'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_findkit_superwords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_findkit_superwords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_findkit_superwords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_findkit_superwords'"
