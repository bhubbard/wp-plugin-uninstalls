#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'camoo_cdn_cache_settings'
wp option delete 'ossdl_off_cdn_url'
wp option delete 'ossdl_off_blog_url'
wp option delete 'wp_camoo_cdn_oss'
wp option delete 'wp_camoo_cdn_db_version'

# Delete Transients
wp transient delete 'wp_camoo_cdn_sync_message'

# Clear Cron Jobs
wp cron event delete 'wp_camoo_cdn_cron_soon'

