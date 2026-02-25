#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'liquid_speech_balloon'
wp option delete 'liquid_speech_balloon_img'
wp option delete 'liquid_speech_balloon_name'
wp option delete 'liquid_speech_balloon_note'

# Delete Transients
wp transient delete 'liquid_admin_notices'
wp transient delete 'liquid_admin_offer'

