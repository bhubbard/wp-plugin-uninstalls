<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('r34ics_version');
delete_site_option('r34ics_version');
delete_option('r34ics_admin_access');
delete_site_option('r34ics_admin_access');
delete_option('r34ics_deferred_admin_notices');
delete_site_option('r34ics_deferred_admin_notices');
delete_option('r34ics_paused');
delete_site_option('r34ics_paused');
delete_option('r34ics_previous_version');
delete_site_option('r34ics_previous_version');
delete_option('r34ics_display_calendar_memory_limit');
delete_site_option('r34ics_display_calendar_memory_limit');
delete_option('r34ics_transients_expiration');
delete_site_option('r34ics_transients_expiration');
delete_option('r34ics_colors_match_theme_json');
delete_site_option('r34ics_colors_match_theme_json');
delete_option('r34ics_colors_darkmode');
delete_site_option('r34ics_colors_darkmode');
delete_option('r34ics_allowed_hosts');
delete_site_option('r34ics_allowed_hosts');
delete_option('r34ics_register_customizer');
delete_site_option('r34ics_register_customizer');
delete_option('r34ics_locale');
delete_site_option('r34ics_locale');
delete_option('r34ics_display_add_calendar_button_false');
delete_site_option('r34ics_display_add_calendar_button_false');
delete_option('r34ics_use_new_defaults_10_6');
delete_site_option('r34ics_use_new_defaults_10_6');
delete_option('r34ics_default_shortcode');
delete_site_option('r34ics_default_shortcode');
delete_option('r34ics_transient_expiration');
delete_site_option('r34ics_transient_expiration');
delete_option('r34ics_url_get_contents_legacy_method');
delete_site_option('r34ics_url_get_contents_legacy_method');
delete_option('r34ics_ajax_by_default');
delete_site_option('r34ics_ajax_by_default');
delete_option('r34ics_allowed_ports');
delete_site_option('r34ics_allowed_ports');
delete_option('r34ics_load_css_js_on_wp_enqueue_scripts');
delete_site_option('r34ics_load_css_js_on_wp_enqueue_scripts');
delete_option('r34ics_feed_urls_permanent');
delete_site_option('r34ics_feed_urls_permanent');
delete_option('r34ics_pre_wp53_deprecated');
delete_site_option('r34ics_pre_wp53_deprecated');
delete_option('r34ics_i18n_locales');
delete_site_option('r34ics_i18n_locales');
delete_option('r34ics_feed_urls');
delete_site_option('r34ics_feed_urls');
delete_option('r34ics_refreshed');
delete_site_option('r34ics_refreshed');
delete_option('r34ics_activation_redirect');
delete_site_option('r34ics_activation_redirect');
delete_option('r34ics_ajax_bypass_nonce');
delete_site_option('r34ics_ajax_bypass_nonce');
delete_option('r34ics_admin_first_run');
delete_site_option('r34ics_admin_first_run');

// Delete Transients
delete_transient('r34ics_rate_limited');
delete_site_transient('r34ics_rate_limited');

