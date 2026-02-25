#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gl_db_version'
wp option delete 'instant_locations'
wp option delete 'instant_locations_settings'

