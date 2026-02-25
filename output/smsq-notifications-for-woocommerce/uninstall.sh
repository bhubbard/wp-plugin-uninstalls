#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'smsq_settings'

# Delete Transients
wp transient delete 'sms_q_plugin'

# Clear Cron Jobs
wp cron event delete 'sms_q_ejecuta_el_temporizador'

