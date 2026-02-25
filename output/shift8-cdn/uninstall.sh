#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'shift8_cdn_url'
wp option delete 'shift8_cdn_api'
wp option delete 'shift8_cdn_prefix'
wp option delete 'shift8_cdn_minify_html'
wp option delete 'shift8_cdn_minify_html_skip_logged_in'
wp option delete 'shift8_cdn_minify_html_preserve_comments'
wp option delete 'shift8_cdn_minify_css'
wp option delete 'shift8_cdn_minify_js'
wp option delete 'shift8_cdn_enabled'
wp option delete 'shift8_cdn_css'
wp option delete 'shift8_cdn_js'
wp option delete 'shift8_cdn_media'
wp option delete 'shift8_cdn_reject_files'
wp option delete 'shift8_cdn_email'

# Delete Transients
wp transient delete 'shift8_cdn_minify_map'

# Clear Cron Jobs
wp cron event delete 'shift8_cdn_cron_hook'

