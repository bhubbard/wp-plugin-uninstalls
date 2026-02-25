#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'carbon_breadcrumbs_%'"
wp option delete 'carbon_breadcrumbs_glue'
wp option delete 'carbon_breadcrumbs_min_items'
wp option delete 'carbon_breadcrumbs_last_item_link'

