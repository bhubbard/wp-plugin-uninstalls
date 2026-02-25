#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mms_modal_enable'
wp option delete 'mms_city'
wp option delete 'mms_shabbat_next_shabbat_time'
wp option delete 'mms_its_the_key'
wp option delete 'mms_its_activate'
wp option delete 'mms_error'
wp option delete 'mms_success'
wp option delete 'mms_shabbat_force_close'
wp option delete 'mms_api_key'
wp option delete 'mms_cronjob_enable'
wp option delete 'mms_shabbat_close'
wp option delete 'mms_button_text'
wp option delete 'mms_button_bg_color'
wp option delete 'mms_button_text_color'
wp option delete 'mms_alert_hide_add_to_cart'
wp option delete 'mms_alert_hide_payment_options'
wp option delete 'mms_modal_page'
wp option delete 'mms_alert_bar_enable'
wp option delete 'mms_alert_bar_message'
wp option delete 'mms_alert_bar_text_color'
wp option delete 'mms_alert_bar_background_color'
wp option delete 'mms_alert_bar_close_button'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_hdo_schedule_%' OR option_name LIKE '_site_transient_hdo_schedule_%'"
wp transient delete 'hdo_cities_list'
wp transient delete 'hdo_last_license_check'

# Clear Cron Jobs
wp cron event delete 'we_check_shabbat_next'
wp cron event delete 'hdo_revalidate_license'

