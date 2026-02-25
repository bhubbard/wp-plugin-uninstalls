#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'icp_tracking_code'
wp option delete 'icp_tracking_domain'
wp option delete 'update_plugins'
wp option delete 'current_theme'
wp option delete 'update_themes'
wp option delete 'icp_plugin_key'
wp option delete 'srpd_clickbank_id'
wp option delete 'icp_wp_auto_update'
wp option delete 'icp_plugins_auto_update'
wp option delete 'icp_themes_auto_update'
wp option delete 'icp_sa_forms_db_version'
wp option delete 'serped_db_version'
wp option delete 'widget_srpd_sa_widget'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'update_themes'

