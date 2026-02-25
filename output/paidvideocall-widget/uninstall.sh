#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_pvcw_widget_api_key'
wp option delete '_pvcw_widget_url'
wp option delete '_pvcw_widget_page'
wp option delete 'pvcw_widget_api_key'

