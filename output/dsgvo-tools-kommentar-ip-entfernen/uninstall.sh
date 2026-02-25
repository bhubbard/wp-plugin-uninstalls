#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fhw_dsgvo_kommentar_time_removement'
wp option delete 'fhw_dsgvo_kommentar_removement_time'

# Clear Cron Jobs
wp cron event delete 'fhw_dsgvo_kommentare_rotation'

