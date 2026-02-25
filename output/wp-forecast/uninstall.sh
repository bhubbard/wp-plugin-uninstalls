#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpf_sem_ajaxload'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wp-forecast-location%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wp-forecast-service%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wp-forecast-apikey1%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wp-forecast-apikey2%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wp-forecast-locname%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wp-forecast-refresh%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wp-forecast-metric%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wp-forecast-language%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wp-forecast-daytime%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wp-forecast-nighttime%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wp-forecast-dispconfig%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wp-forecast-windunit%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wp-forecast-currtime%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wp-forecast-timeoffset%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wp-forecast-title%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wp-forecast-expire%'"
wp option delete 'wpf-show-admin-notice'
wp option delete 'wp-forecast-count'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wp-forecast-cache%'"
wp option delete 'wp-forecast-timeout'
wp option delete 'wp-forecast-delopt'
wp option delete 'wp-forecast-ipstackapikey'
wp option delete 'wpf_sa_defaults'
wp option delete 'wpf_sa_allowed'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wp-forecast-opts%'"
wp option delete 'wp-forecast-pre-transport'
wp option delete 'wp-forecast-wp-transport'

