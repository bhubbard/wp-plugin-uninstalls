<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('vr_frases_options');
delete_site_option('vr_frases_options');
delete_option('vr_frases_version');
delete_site_option('vr_frases_version');
delete_option('vr_frases_activation_time');
delete_site_option('vr_frases_activation_time');
delete_option('vr_frases_deactivation_time');
delete_site_option('vr_frases_deactivation_time');
delete_option('vr_frases_needs_upgrade');
delete_site_option('vr_frases_needs_upgrade');
delete_option('vr_frases_last_upgrade_attempt');
delete_site_option('vr_frases_last_upgrade_attempt');
delete_option('vr_frases_last_successful_upgrade');
delete_site_option('vr_frases_last_successful_upgrade');
delete_option('vr_frases_last_upgrade_log');
delete_site_option('vr_frases_last_upgrade_log');
delete_option('vr_frases_failed_upgrade_log');
delete_site_option('vr_frases_failed_upgrade_log');
delete_option('vr_frases_upgrade_failed');
delete_site_option('vr_frases_upgrade_failed');
delete_option('vr_frases_upgrade_notice_shown');
delete_site_option('vr_frases_upgrade_notice_shown');
delete_option('vr_frases_upgrade_log');
delete_site_option('vr_frases_upgrade_log');
delete_option('wiki_lang');
delete_site_option('wiki_lang');
delete_option('vr_frases_cleanup_done');
delete_site_option('vr_frases_cleanup_done');
delete_option('vr_frases_last_cleanup_log');
delete_site_option('vr_frases_last_cleanup_log');
delete_option('vr_frases_debug_mode');
delete_site_option('vr_frases_debug_mode');
delete_option('vr_frases_debug_logs');
delete_site_option('vr_frases_debug_logs');

// Delete Transients
delete_transient('vr_frases_upgrade_lock');
delete_site_transient('vr_frases_upgrade_lock');
delete_transient('vr_frases_clases_for_js');
delete_site_transient('vr_frases_clases_for_js');
delete_transient('vr_frases_temas_for_js');
delete_site_transient('vr_frases_temas_for_js');
delete_transient('vr_frases_cache');
delete_site_transient('vr_frases_cache');

// Clear Cron Jobs
wp_clear_scheduled_hook('vr_frases_scheduled_event');

