#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'st_settings_extended'
wp option delete 'st_settings_template'
wp option delete 'st_settings_pg_dashboard'

