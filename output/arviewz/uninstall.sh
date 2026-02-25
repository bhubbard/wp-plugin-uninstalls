#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'arviewz_settings'
wp option delete 'arviewz_add_model_url_page'
wp option delete 'arviewz_3d_model_store_url'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'model_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'model_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'model_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'model_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'btn_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'btn_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'btn_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'btn_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'embed_html'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'embed_html'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'embed_html'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'embed_html'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'add_3d_model'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'add_3d_model'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'add_3d_model'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'add_3d_model'"
