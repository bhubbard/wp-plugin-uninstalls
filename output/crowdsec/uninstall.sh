#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'crowdsec_stream_mode'
wp option delete 'crowdsec_api_url'
wp option delete 'crowdsec_usage_metrics'
wp option delete 'crowdsec_cache_system'
wp option delete 'crowdsec_clean_ip_cache_duration'
wp option delete 'crowdsec_bad_ip_cache_duration'
wp option delete 'crowdsec_trust_ip_forward_array'
wp option delete 'crowdsec_geolocation_maxmind_database_path'
wp option delete 'crowdsec_api_key'
wp option delete 'crowdsec_stream_mode_refresh_frequency'

