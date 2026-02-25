#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'websiteanalist_site_id'
wp option delete 'websiteanalist_base_url'
wp option delete 'websiteanalist_tracking_enabled'
wp option delete 'websiteanalist_track_tel'
wp option delete 'websiteanalist_track_email'
wp option delete 'websiteanalist_debug_mode'
wp option delete 'websiteanalist_custom_actions'

