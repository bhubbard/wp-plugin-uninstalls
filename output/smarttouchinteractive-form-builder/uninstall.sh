#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sti-settings'
wp option delete 'sti_dashboard_widget_options'
wp option delete 'sti_db_version'
wp option delete 'smart-touch-form-builder-screen-options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sti-form-settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sti-form-settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sti-form-settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sti-form-settings'"
