#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rwpp_db_version'
wp option delete 'rwpp_migration_mode'
wp option delete 'rwpp_effected_loops'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'rwpp_sortorder_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'rwpp_sortorder_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'rwpp_sortorder_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'rwpp_sortorder_%'"
