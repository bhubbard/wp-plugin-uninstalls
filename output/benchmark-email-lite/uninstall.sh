#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpbme_key'
wp option delete 'wpbme_temp_token'
wp option delete 'wpbme_usage_disable'
wp option delete 'wpbme_debug'
wp option delete 'wpbme_temp_token_ttl'
wp option delete 'wpbme_ap_token'
wp option delete 'wpbme_tracking_disable'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpbme_legacy_widget_%'"
wp option delete 'wpbme_sister_dismissed'
wp option delete 'wpbme_db_version'
wp option delete 'benchmark-email-lite_group'
wp option delete 'bmew_key'
wp option delete 'widget_benchmarkemaillite_widget'
wp option delete 'widget_wpbme_widget'
wp option delete 'sidebars_widgets'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_fallback' OR option_name LIKE '_site_transient_%_fallback'"

# Clear Cron Jobs
wp cron event delete 'wpbme_token_renew'

