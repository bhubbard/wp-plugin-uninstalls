#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'opizo_db_version'
wp option delete 'opizo_old_links'
wp option delete 'opizo'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_opizo_shrinked'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_opizo_shrinked'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_opizo_shrinked'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_opizo_shrinked'"
