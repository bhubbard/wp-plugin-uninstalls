#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bugsnag_network'
wp option delete 'bugsnag_api_key'
wp option delete 'bugsnag_notify_severities'
wp option delete 'bugsnag_filterfields'

