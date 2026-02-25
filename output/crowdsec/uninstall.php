<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('crowdsec_stream_mode');
delete_site_option('crowdsec_stream_mode');
delete_option('crowdsec_api_url');
delete_site_option('crowdsec_api_url');
delete_option('crowdsec_usage_metrics');
delete_site_option('crowdsec_usage_metrics');
delete_option('crowdsec_cache_system');
delete_site_option('crowdsec_cache_system');
delete_option('crowdsec_clean_ip_cache_duration');
delete_site_option('crowdsec_clean_ip_cache_duration');
delete_option('crowdsec_bad_ip_cache_duration');
delete_site_option('crowdsec_bad_ip_cache_duration');
delete_option('crowdsec_trust_ip_forward_array');
delete_site_option('crowdsec_trust_ip_forward_array');
delete_option('crowdsec_geolocation_maxmind_database_path');
delete_site_option('crowdsec_geolocation_maxmind_database_path');
delete_option('crowdsec_api_key');
delete_site_option('crowdsec_api_key');
delete_option('crowdsec_stream_mode_refresh_frequency');
delete_site_option('crowdsec_stream_mode_refresh_frequency');

