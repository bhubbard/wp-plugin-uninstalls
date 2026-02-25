#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'iqa_trackingcode'
wp option delete 'iqa_track_loggedin'
wp option delete 'iqa_track_admin'

