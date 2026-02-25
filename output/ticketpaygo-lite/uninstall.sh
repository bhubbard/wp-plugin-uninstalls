#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ticketpaygo_lite_settings'
wp option delete 'tpgl_db_version'
wp option delete 'ticketpaygo_email_settings'
wp option delete 'tpgl_version'
wp option delete 'tpgl_activated'
wp option delete 'tpgl_currency_symbol'
wp option delete 'tpgl_elementor_notice_dismissed'
wp option delete 'tpgl_elementor_notice_shown'
wp option delete 'tpgl_settings'
wp option delete 'tpgl_force_db_check'

# Delete Transients
wp transient delete 'ticketpaygo_tables_created'
wp transient delete 'ticketpaygo_tables_error'
wp transient delete 'tpgl_tables_created'
wp transient delete 'tpgl_tables_error'

# Clear Cron Jobs
wp cron event delete 'tpgl_daily_reminders'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ticketpaygo_event_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ticketpaygo_event_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ticketpaygo_event_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ticketpaygo_event_data'"
