#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wsklad_version'
wp option delete 'wsklad_wizard'
wp option delete 'wsklad_version_init'
wp option delete 'wsklad_version_database'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
