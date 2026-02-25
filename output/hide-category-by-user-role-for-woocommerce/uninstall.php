<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tswchc_rules');
delete_site_option('tswchc_rules');
delete_option('tswchc_redirect_url');
delete_site_option('tswchc_redirect_url');
delete_option('tswchc_redirect_mode');
delete_site_option('tswchc_redirect_mode');
delete_option('tswchc_display_custom_message');
delete_site_option('tswchc_display_custom_message');
delete_option('tswchc_message_wrapper');
delete_site_option('tswchc_message_wrapper');
delete_option('tswchc_message_styles');
delete_site_option('tswchc_message_styles');
delete_option('tswchc_settings');
delete_site_option('tswchc_settings');
delete_option('tswchc_version');
delete_site_option('tswchc_version');

// Delete Transients
delete_transient('wc_term_counts');
delete_site_transient('wc_term_counts');

