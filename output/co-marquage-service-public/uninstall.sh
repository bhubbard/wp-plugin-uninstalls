#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'comarquage_global_pivot_enable'
wp option delete 'comarquage_global_css_enable'
wp option delete 'comarquage_global_js_leaflet_enable'
wp option delete 'comarquage_global_poweredby'
wp option delete 'comarquage_debug_enable'
wp option delete 'comarquage_update_time'

# Delete Transients
wp transient delete 'comarquage_od_notice_dismissed'

# Clear Cron Jobs
wp cron event delete 'comarquage_daily_xml_update'

