#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mezco_sms_settings'

# Delete Transients
wp transient delete 'mezco_sms_plugin'

# Clear Cron Jobs
wp cron event delete 'mezco_sms_ejecuta_el_temporizador'

