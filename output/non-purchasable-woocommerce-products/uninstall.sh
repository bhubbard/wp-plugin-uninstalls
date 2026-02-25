#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gp_npwp_hide_admin_column'
wp option delete 'gp_npwp_new_button_text'
wp option delete 'gp_npwp_hide_wrapper'
wp option delete 'gp_npwp_new_message_text'
wp option delete 'gp_npwp_hide_message'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_not_buyable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_not_buyable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_not_buyable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_not_buyable'"
