#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dsdi_version'
wp option delete 'dsdi_settings'
wp option delete 'default_ds_directory'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dsdi_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dsdi_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dsdi_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dsdi_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'option_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'option_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'option_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'option_1'"
