#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'webidextrous_time_delayed_redirects_option'
wp option delete 'webidextrous_time_delayed_redirects_network_option'

# Delete Transients
wp transient delete 'webidextrous_time_delayed_redirects_cache'
wp transient delete 'webidextrous_time_delayed_redirects_debug'

