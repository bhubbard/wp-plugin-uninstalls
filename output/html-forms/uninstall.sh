#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hf_settings'
wp option delete 'hf_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hf_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hf_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hf_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hf_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'hf_message_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'hf_message_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'hf_message_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'hf_message_%'"
