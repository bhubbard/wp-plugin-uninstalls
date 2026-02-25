#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'inspector_api_key'
wp option delete 'inspector_enable'
wp option delete 'inspector_track_admin'

