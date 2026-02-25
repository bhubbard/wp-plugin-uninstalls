#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fv_pro_purchase'
wp option delete 'fv_db_version'
wp option delete 'fvSettings'
wp option delete 'fv_forms'
wp option delete 'fv-keys'
wp option delete 'fv_dashboard_widget_settings'
wp option delete 'fv-review'

# Delete Transients
wp transient delete 'fv_pro_remind_later'
wp transient delete 'fv_remind_later'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bricks_page_content_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bricks_page_content_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bricks_page_content_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bricks_page_content_2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
