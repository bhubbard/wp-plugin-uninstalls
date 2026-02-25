#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nota_script_access_roles'
wp option delete 'nota_news_display_name'
wp option delete 'nota_news_market_id'
wp option delete 'nota_disable_tool_script'
wp option delete 'nota_debug'
wp option delete 'nota_db_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nota_client_user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nota_client_user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nota_client_user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nota_client_user_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nota_selected_brand_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nota_selected_brand_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nota_selected_brand_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nota_selected_brand_id'"
