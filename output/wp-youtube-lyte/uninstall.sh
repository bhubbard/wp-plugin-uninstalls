#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lyte_emptycache'
wp option delete 'lyte_show_links'
wp option delete 'lyte_size'
wp option delete 'lyte_hidef'
wp option delete 'lyte_position'
wp option delete 'lyte_microdata'
wp option delete 'lyte_greedy'
wp option delete 'lyte_yt_api_key'
wp option delete 'lyte_local_thumb'
wp option delete 'lyte_disclaimer'
wp option delete 'lyte_api_error'
wp option delete 'lyte_version'
wp option delete 'lyte_cache_index'
wp option delete 'lyte_widget_cache'

# Delete Transients
wp transient delete 'wp-youtube-lyte_banner'

