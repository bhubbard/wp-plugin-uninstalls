#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ss_song_requester_settings'

# Delete Transients
wp transient delete 'ss_song_requester_admin_notices'

