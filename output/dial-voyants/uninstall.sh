#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dv_settings'
wp option delete 'my_db_version'
wp option delete 'dv_settings_style'
wp option delete 'dv_settings_avis'
wp option delete 'dialv_plugin_version'

