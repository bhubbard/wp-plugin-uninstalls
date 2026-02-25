#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aa_block_fallback_country'
wp option delete 'aa_block_use_ip_api'
wp option delete 'aa_block_redirect_url'
wp option delete 'aa_block_enabled'
wp option delete 'aa_block_countries'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aa_block_enable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aa_block_enable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aa_block_enable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aa_block_enable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aa_block_countries'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aa_block_countries'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aa_block_countries'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aa_block_countries'"
