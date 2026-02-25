<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hurraki_tooltip_wiki');
delete_site_option('hurraki_tooltip_wiki');
delete_option('hurraki_tooltip_key_words_last_update_time');
delete_site_option('hurraki_tooltip_key_words_last_update_time');
delete_option('hurraki_tooltip_max_word');
delete_site_option('hurraki_tooltip_max_word');
delete_option('hurraki_tooltip_key_words_en');
delete_site_option('hurraki_tooltip_key_words_en');
delete_option('hurraki_tooltip_key_words_eo');
delete_site_option('hurraki_tooltip_key_words_eo');
delete_option('hurraki_tooltip_key_words_de');
delete_site_option('hurraki_tooltip_key_words_de');
delete_option('hurraki_tooltip_key_words_ma');
delete_site_option('hurraki_tooltip_key_words_ma');
delete_option('hurraki_tooltip_key_words_it');
delete_site_option('hurraki_tooltip_key_words_it');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'hurraki_tooltip_key_words_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
delete_transient('hurrakify_updating');
delete_site_transient('hurrakify_updating');

// Clear Cron Jobs
wp_clear_scheduled_hook('hurrakify_weekly_update_check');

