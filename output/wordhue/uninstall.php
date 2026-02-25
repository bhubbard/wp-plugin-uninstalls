<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('philips_hue_settings');
delete_site_option('philips_hue_settings');

// Delete Transients
delete_transient('codex_nas_lighting_lights');
delete_site_transient('codex_nas_lighting_lights');
delete_transient('codex_nas_lighting_lights_raw');
delete_site_transient('codex_nas_lighting_lights_raw');
delete_transient('codex_nas_lighting_sensors');
delete_site_transient('codex_nas_lighting_sensors');
delete_transient('codex_nas_lighting_sensors_raw');
delete_site_transient('codex_nas_lighting_sensors_raw');

// Clear Cron Jobs
wp_clear_scheduled_hook('codex_nas_lighting_lights_job');
wp_clear_scheduled_hook('codex_nas_lighting_sensors_job');

