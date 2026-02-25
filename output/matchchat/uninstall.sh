#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mc_show_history'
wp option delete 'mc_show_count'
wp option delete 'mc_cache_limit'

