#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'xrely_active'
wp option delete 'xrely_key'
wp option delete 'xrely_css'
wp option delete 'xrely_data_config'
wp option delete 'xrely_key_type'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
