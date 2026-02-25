#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bop_nav_search_box_item_recd_vers_warn'
wp option delete 'bop_nav_search_box_item_version'
wp option delete 'bop_nav_search_box_item_recommended_versions_warn'

