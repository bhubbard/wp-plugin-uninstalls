#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'disable_version_caching_options'
wp option delete 'disable_version_caching_clear_cache_time'

