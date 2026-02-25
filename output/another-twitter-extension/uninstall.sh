#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dt_atp_status_enabled'
wp option delete 'dt_atp_textbox'
wp option delete 'dt_atp_currently_active'
wp option delete 'dt_atp_last_update_time'
wp option delete 'dt_atp_number_of_tweets'
wp option delete 'dt_atp_number_of_saved_tweets'
wp option delete 'dt_atp_cron_time'
wp option delete 'dt_atp_textarea_style'
wp option delete 'dt_atp_customer_key'
wp option delete 'dt_atp_customer_secret'
wp option delete 'dt_atp_access_token'
wp option delete 'dt_atp_access_token_secret'
wp option delete 'dt_atp_radio'
wp option delete 'dt_atp_wp_cron_enabled'
wp option delete 'dt_atp_wrapper_class'
wp option delete 'dt_atp_date_format'

# Delete Transients
wp transient delete 'schedule'

# Clear Cron Jobs
wp cron event delete 'wp_ajax_dt_atp_get_new_tweets'

