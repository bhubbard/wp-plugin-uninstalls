#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'toffeepress_api_key'
wp option delete 'toffeepress_quality'
wp option delete 'toffeepress_keep_originals'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_tp_compressed_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_tp_compressed_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_tp_compressed_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_tp_compressed_%'"
