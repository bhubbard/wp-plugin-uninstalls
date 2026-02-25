<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('traffic_plugin_options_favicons');
delete_site_option('traffic_plugin_options_favicons');
delete_option('traffic_plugin_options_geoip');
delete_site_option('traffic_plugin_options_geoip');
delete_option('traffic_plugin_options_logger');
delete_site_option('traffic_plugin_options_logger');
delete_option('traffic_plugin_options_shmop');
delete_site_option('traffic_plugin_options_shmop');
delete_option('traffic_plugin_options_usecdn');
delete_site_option('traffic_plugin_options_usecdn');
delete_option('traffic_plugin_options_nag');
delete_site_option('traffic_plugin_options_nag');
delete_option('traffic_plugin_features_history');
delete_site_option('traffic_plugin_features_history');
delete_option('traffic_plugin_features_metrics');
delete_site_option('traffic_plugin_features_metrics');
delete_option('traffic_plugin_features_livelog');
delete_site_option('traffic_plugin_features_livelog');
delete_option('traffic_plugin_features_smart_filter');
delete_site_option('traffic_plugin_features_smart_filter');
delete_option('traffic_inbound_options_capture');
delete_site_option('traffic_inbound_options_capture');
delete_option('traffic_inbound_options_level');
delete_site_option('traffic_inbound_options_level');
delete_option('traffic_inbound_options_cut_path');
delete_site_option('traffic_inbound_options_cut_path');
delete_option('traffic_outbound_options_capture');
delete_site_option('traffic_outbound_options_capture');
delete_option('traffic_outbound_options_level');
delete_site_option('traffic_outbound_options_level');
delete_option('traffic_outbound_options_cut_path');
delete_site_option('traffic_outbound_options_cut_path');
delete_option('auto_update_plugins');
delete_site_option('auto_update_plugins');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');

