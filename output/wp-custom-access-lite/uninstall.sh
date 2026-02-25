#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'CUSTOM_ACCESS_LITE_opties_array'
wp option delete 'CUSTOM_ACCESS_LITE_email_options'
wp option delete 'CUSTOM_ACCESS_LITE_Logger_pages'
wp option delete 'CUSTOM_ACCESS_LITE_VERSION'
wp option delete 'my_plugin_db_version'

