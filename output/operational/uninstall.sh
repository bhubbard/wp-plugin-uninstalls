#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'operational_api_key'
wp option delete 'operational_log_activity'
wp option delete 'operational_baseurl'

