#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tbSettings'
wp option delete 'tssSettings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tb_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tb_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tb_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tb_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tb_token_created'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tb_token_created'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tb_token_created'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tb_token_created'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tb_token_last_used'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tb_token_last_used'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tb_token_last_used'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tb_token_last_used'"
