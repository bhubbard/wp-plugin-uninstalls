#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'evm_fb'
wp option delete 'evm_twitter'
wp option delete 'evm_linkedin'
wp option delete 'evm_height'
wp option delete 'evm_width'
wp option delete 'evm_tcolor'
wp option delete 'evm_color'
wp option delete 'evm_htbcolor'
wp option delete 'evm_htcolor'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_url'"
