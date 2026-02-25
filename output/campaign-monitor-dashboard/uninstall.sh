#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cm_api_option'
wp option delete 'cm_list_id_option'
wp option delete 'cm_dashboard_widget_option'

