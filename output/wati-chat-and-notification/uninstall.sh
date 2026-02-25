#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wcf_ca_gdpr_message'

# Clear Cron Jobs
wp cron event delete 'wati_cartflow_ca_update_order_status_action'

