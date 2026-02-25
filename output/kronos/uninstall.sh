#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'kronos_calendar_categories'
wp option delete 'kronos_calendar_url'
wp option delete 'kronos_abbreviations'
wp option delete 'kronos_state'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_kronos_update_cal_%' OR option_name LIKE '_site_transient_kronos_update_cal_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_kronos_cal_%' OR option_name LIKE '_site_transient_kronos_cal_%'"

