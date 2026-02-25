#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'analytics_data_code'
wp option delete 'analytics_tracking'
wp option delete 'analytics_data_admin_traffic'
wp option delete 'analytics_data_editor_traffic'
wp option delete 'analytics_data_404_traffic'

