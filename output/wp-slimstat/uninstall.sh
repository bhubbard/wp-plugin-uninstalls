#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'slimstat_tracker_error'
wp option delete 'slimstat_geoip_error'
wp option delete 'slimstat_permalink_structure_updated'
wp option delete 'active_sitewide_plugins'
wp option delete 'slimstat_filters'
wp option delete 'slimstat_last_geoip_dl'
wp option delete 'slimstat_options'
wp option delete 'slimstat_visit_id'

# Delete Transients
wp transient delete 'wp_slimstat_addon_list'
wp transient delete 'slimstat_your_content'
wp transient delete 'slimstat_resource_titles'
wp transient delete 'slimstat_ranking_values'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_promo_hide' OR option_name LIKE '_site_transient_%_promo_hide'"
wp transient delete 'slimstat_dynamic_strings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wp-slimstat-download-link-%' OR option_name LIKE '_site_transient_wp-slimstat-download-link-%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_slimstat_%' OR option_name LIKE '_site_transient_slimstat_%'"
wp transient delete 'slimstat_visit_id'

# Clear Cron Jobs
wp cron event delete 'wp_slimstat_purge'
wp cron event delete 'wp_slimstat_update_geoip_database'

