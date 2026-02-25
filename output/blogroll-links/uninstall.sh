#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'blogroll_links_default_category_slug'
wp option delete 'blogroll_links_default_sort_by'
wp option delete 'blogroll_links_default_sort_order'

