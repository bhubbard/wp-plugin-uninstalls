#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'promptcash_version'
wp option delete 'cashtippr_memcached_secret'
wp option delete 'promptcash_tables'
wp option delete 'promptcash_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'prompt_tip_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'prompt_tip_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'prompt_tip_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'prompt_tip_amount'"
