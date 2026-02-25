#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dwn_wdm_token'

# Clear Cron Jobs
wp cron event delete 'dwn_process_whatsapp_queue'

