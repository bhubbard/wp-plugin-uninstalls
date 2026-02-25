-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('geoip_detect2_dynamic-reverse-proxies_last_updated', 'geoip-detect-ajax_enabled', 'geoip-detect-ajax_set_css_country', 'geoip-detect-ajax_shortcodes', 'geoip-detect-ajax_enqueue_js', 'geoip-detect-trusted_proxy_ips', 'geoip-detect-has_reverse_proxy', 'geoip-detect-external_ip', 'geoip-detect-source', 'geoip-detect-auto_license_key', 'geoip-detect-auto_license_id', 'geoip-detect-auto_downloaded_file', 'geoip-detect-fastah_key', 'geoip-detect-fastah_http2', 'geoip-detect-header-provider', 'geoip-detect-ipstack_key', 'geoip-detect-ipstack_ssl', 'geoip_detect2_maxmind_ccpa_blacklist_last_updated', 'geoip_detect2_maxmind_ccpa_blacklist', 'geoip-detect-manual_file', 'geoip-detect-manual_file_validated', 'geoip-detect-precision_api_type', 'geoip-detect-precision-remaining_credits', 'geoip-detect-precision-user_id', 'geoip-detect-precision-user_secret', 'geoip-detect-ui-has-chosen-source', 'geoip-detect-set_css_country', 'geoip-detect-disable_pagecache', 'geoip-detect-dynamic_reverse_proxies', 'geoip-detect-dynamic_reverse_proxy_type', 'geoip-detect-ajax_beta', 'geoip-detect-plugin_version', 'geoip_detect_external_ip');
DELETE FROM wp_options WHERE option_name LIKE 'geoip-detect-%';
DELETE FROM wp_options WHERE option_name LIKE 'geoip-detect-logger-last-error%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('geoip_detect_dismissed_notices');
DELETE FROM wp_usermeta WHERE meta_key IN ('geoip_detect_dismissed_notices');
DELETE FROM wp_termmeta WHERE meta_key IN ('geoip_detect_dismissed_notices');
DELETE FROM wp_commentmeta WHERE meta_key IN ('geoip_detect_dismissed_notices');

