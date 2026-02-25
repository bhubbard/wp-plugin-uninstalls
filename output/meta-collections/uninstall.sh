#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'metadata_%'"
wp option delete 'collection_cpt'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'metaboxes_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'userinterface_%'"
wp option delete 'mediametadata'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'tableorder_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'collections_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'collections_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'collections_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'collections_%'"
