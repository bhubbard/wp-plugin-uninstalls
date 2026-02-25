#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'imagprfo_tracking_optin'
wp option delete 'imagprfo_plugin_version'
wp option delete 'image_preview_for_acf_field_settings'

