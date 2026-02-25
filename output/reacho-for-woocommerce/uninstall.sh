#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'reachowc_consumer_key'
wp option delete 'reachowc_consumer_secret'
wp option delete 'reachowc_settings'

