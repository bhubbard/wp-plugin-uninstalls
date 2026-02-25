#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cleavr_auto_clear_cache'
wp option delete 'cleavr_nginx_cache_hook'

