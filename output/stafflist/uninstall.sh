#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'stafflist_rename_noresults'
wp option delete 'stafflist_rename_page'
wp option delete 'stafflist_rename_results'
wp option delete 'stafflist_rename_searchdir'

