#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cp_td'
wp option delete 'cp_pa'
wp option delete 'cp_cache_timeout'

