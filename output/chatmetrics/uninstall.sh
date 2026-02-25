#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'chatmetrics_url'
wp option delete 'chatmetrics_enabled'
wp option delete 'chatmetrics_user'
wp option delete 'chatmetrics_code'

