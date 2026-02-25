#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'apiendpoints'
wp option delete 'rest_cache_time'
wp option delete 'rest_cache_datetime'

