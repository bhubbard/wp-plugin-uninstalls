#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'universal_google_analytics_version'
wp option delete 'universal_google_analytics_tracking_id'
wp option delete 'universal_google_tag_type'
wp option delete 'universal_google_analytics_gtag_id'
wp option delete 'universal_google_analytics_tracking_id_ga4'

