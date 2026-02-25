#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'smntcs_google_analytics_tracking_code'
wp option delete 'smntcs_google_analytics_ip_anonymization'

