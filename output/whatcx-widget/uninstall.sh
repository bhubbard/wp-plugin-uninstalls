#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'whatcx_widget_app_key'
wp option delete 'whatcx_widget_api_key'
wp option delete 'whatcx_widget_active'

