#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'offline_precache_enabled_ga'
wp option delete 'offline_precache_page_id'
wp option delete 'Activated_Offline_Precache'
wp option delete 'offline_precache_custom_strategies'
wp option delete 'offline_precache_enabled'

