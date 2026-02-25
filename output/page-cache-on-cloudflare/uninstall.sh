#!/bin/bash
# WP-CLI Uninstall Script

# Clear Cron Jobs
wp cron event delete 'cfpc_action_preload_cache_set_urls_single_event'
wp cron event delete 'cfpc_action_preload_cache_event'

