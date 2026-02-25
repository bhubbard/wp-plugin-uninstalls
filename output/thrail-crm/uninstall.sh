#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'thrail_crm_email_settings'
wp option delete 'thrail_crm_inserted'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_congratulatory_email_sent_time_%' OR option_name LIKE '_site_transient_congratulatory_email_sent_time_%'"

# Clear Cron Jobs
wp cron event delete 'thrail_send_followup_email'

