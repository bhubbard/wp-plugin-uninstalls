#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bps_settings'
wp option delete 'rewrite_rules'
wp option delete 'widget_bps_widget'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bps_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bps_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bps_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bps_options'"
