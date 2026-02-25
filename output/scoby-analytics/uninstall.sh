#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'scoby_analytics_version'
wp option delete 'scoby_analytics_options'

# Delete Transients
wp transient delete 'scoby_analytics_check_config'
wp transient delete 'scoby_analytics_flush_cache_notice'
wp transient delete 'scoby_analytics_use_client_integration'

