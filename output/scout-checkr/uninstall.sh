#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_status_do_activation_redirect'
wp option delete 'grafana_dashboard_title'
wp option delete 'grafana_api'
wp option delete 'grafana_url'
wp option delete 'grafana_dashboard_url'
wp option delete 'grafana_dashboard_id'
wp option delete 'grafana_dashboard_uid'
wp option delete 'grafana_dashboard_version'

# Clear Cron Jobs
wp cron event delete 'spiral_grafana_test_results_event'

