#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'geoip-detect-%'"
wp option delete 'geoip_detect2_dynamic-reverse-proxies_last_updated'
wp option delete 'geoip-detect-ajax_enabled'
wp option delete 'geoip-detect-ajax_set_css_country'
wp option delete 'geoip-detect-ajax_shortcodes'
wp option delete 'geoip-detect-ajax_enqueue_js'
wp option delete 'geoip-detect-trusted_proxy_ips'
wp option delete 'geoip-detect-has_reverse_proxy'
wp option delete 'geoip-detect-external_ip'
wp option delete 'geoip-detect-source'
wp option delete 'geoip-detect-auto_license_key'
wp option delete 'geoip-detect-auto_license_id'
wp option delete 'geoip-detect-auto_downloaded_file'
wp option delete 'geoip-detect-fastah_key'
wp option delete 'geoip-detect-fastah_http2'
wp option delete 'geoip-detect-header-provider'
wp option delete 'geoip-detect-ipstack_key'
wp option delete 'geoip-detect-ipstack_ssl'
wp option delete 'geoip_detect2_maxmind_ccpa_blacklist_last_updated'
wp option delete 'geoip_detect2_maxmind_ccpa_blacklist'
wp option delete 'geoip-detect-manual_file'
wp option delete 'geoip-detect-manual_file_validated'
wp option delete 'geoip-detect-precision_api_type'
wp option delete 'geoip-detect-precision-remaining_credits'
wp option delete 'geoip-detect-precision-user_id'
wp option delete 'geoip-detect-precision-user_secret'
wp option delete 'geoip-detect-ui-has-chosen-source'
wp option delete 'geoip-detect-set_css_country'
wp option delete 'geoip-detect-disable_pagecache'
wp option delete 'geoip-detect-dynamic_reverse_proxies'
wp option delete 'geoip-detect-dynamic_reverse_proxy_type'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'geoip-detect-logger-last-error%'"
wp option delete 'geoip-detect-ajax_beta'
wp option delete 'geoip-detect-plugin_version'

# Delete Transients
wp transient delete 'geoip_detect_external_ip'

# Clear Cron Jobs
wp cron event delete 'geoipdetectupdate'
wp cron event delete 'geoipdetectccpaupdate'
wp cron event delete 'geoipdetectdynamicproxiesupdate'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'geoip_detect_dismissed_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'geoip_detect_dismissed_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'geoip_detect_dismissed_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'geoip_detect_dismissed_notices'"
