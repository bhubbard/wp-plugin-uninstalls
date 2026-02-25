#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sc_sortable_columns_posts'
wp option delete 'sc_sortable_columns_pages'
wp option delete 'sortcols_sortable_columns_posts'
wp option delete 'sortcols_sortable_columns_pages'

