#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'apg_sms_settings'
wp option delete 'woocommerce_default_country'

# Delete Transients
wp transient delete 'apg_sms_plugin'

# Clear Cron Jobs
wp cron event delete 'apg_sms_ejecuta_el_temporizador'
wp cron event delete 'apg_sms_ejecuta_el_retraso'

