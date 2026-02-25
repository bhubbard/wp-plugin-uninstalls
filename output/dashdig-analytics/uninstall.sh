#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dashdig_api_key'
wp option delete 'dashdig_enabled'
wp option delete 'dashdig_script_position'
wp option delete 'dashdig_exclude_admins'
wp option delete 'dashdig_tracking_id'
wp option delete 'dashdig_tracking_enabled'
wp option delete 'dashdig_track_admins'
wp option delete 'dashdig_site_id'
wp option delete 'dashdig_version'

