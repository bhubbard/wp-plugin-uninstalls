#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vfb_dashboard_widget_options'
wp option delete 'vfb-settings'
wp option delete 'vfb_db_version'
wp option delete 'recently_activated'
wp option delete 'visual-form-builder-screen-options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vfb-form-settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vfb-form-settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vfb-form-settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vfb-form-settings'"
