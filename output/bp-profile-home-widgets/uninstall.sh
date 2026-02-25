#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bpphw_widget_options'
wp option delete 'bpphw_presets'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bpphw_widget_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bpphw_widget_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bpphw_widget_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bpphw_widget_data'"
