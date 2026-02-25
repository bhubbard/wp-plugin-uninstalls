#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpgitlab_cache_time'
wp option delete 'wpgitlab_url'
wp option delete 'wpgitlab_api_key'
wp option delete 'wpgitlab_clear_cache'

