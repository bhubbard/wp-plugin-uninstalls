#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpdp_range'
wp option delete 'wpdp_enqueue_url'
wp option delete 'wp_datepicker_wpadmin'
wp option delete 'wpdp_options'
wp option delete 'wpdp_developer_options'
wp option delete 'wpdp_previous_version_compatible'
wp option delete 'wp_datepicker'
wp option delete 'wp_datepicker_language'
wp option delete 'wp_datepicker_weekends'
wp option delete 'wp_datepicker_autocomplete'
wp option delete 'wp_datepicker_beforeShowDay'
wp option delete 'wp_datepicker_months'
wp option delete 'wp_datepicker_readonly'
wp option delete 'wpdp_fonts'
wp option delete 'wpdp_global_settings'

