#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'featured_items_metabox_options'
wp option delete 'Featured_Items'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_featured'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_featured'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_featured'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_featured'"
