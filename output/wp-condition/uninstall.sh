#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wsc_wp_conditions_settings'
wp option delete 'pagespeedonline_dates_arr'
wp option delete 'wpfixit_con_admin_load_times'
wp option delete 'wpfixit_con_load_times'

