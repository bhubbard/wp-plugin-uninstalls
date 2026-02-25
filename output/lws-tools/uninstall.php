<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lws_tools_chatbot_data');
delete_site_option('lws_tools_chatbot_data');
delete_option('lws_tk_ia_chatbot_state');
delete_site_option('lws_tk_ia_chatbot_state');
delete_option('lws_aff_new_login');
delete_site_option('lws_aff_new_login');
delete_option('whl_page');
delete_site_option('whl_page');
delete_option('easy_hide_login_options');
delete_site_option('easy_hide_login_options');
delete_option('lws_preprod');
delete_site_option('lws_preprod');
delete_option('lws_tk_keep_data_on_delete');
delete_site_option('lws_tk_keep_data_on_delete');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'lws_tk_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('lws_tk_reduce_revisions_number');
delete_site_option('lws_tk_reduce_revisions_number');
delete_option('lwstk_do_not_ask_again');
delete_site_option('lwstk_do_not_ask_again');
delete_option('lws_tk_llm_optimisation');
delete_site_option('lws_tk_llm_optimisation');
delete_option('lws_tk_sanitize_media');
delete_site_option('lws_tk_sanitize_media');
delete_option('lws_tk_delete_live_writer');
delete_site_option('lws_tk_delete_live_writer');
delete_option('lws_tk_err_co');
delete_site_option('lws_tk_err_co');
delete_option('lws_tk_hide_gen');
delete_site_option('lws_tk_hide_gen');
delete_option('lws_tk_less_revision');
delete_site_option('lws_tk_less_revision');
delete_option('lws_tk_no_h1_mce');
delete_site_option('lws_tk_no_h1_mce');
delete_option('lws_tk_no_emote_wp');
delete_site_option('lws_tk_no_emote_wp');
delete_option('lws_tk_page_author_link');
delete_site_option('lws_tk_page_author_link');
delete_option('lws_tk_medium_large');
delete_site_option('lws_tk_medium_large');
delete_option('lws_tk_no_apirest');
delete_site_option('lws_tk_no_apirest');
delete_option('lws_tk_no_user_ep_rest');
delete_site_option('lws_tk_no_user_ep_rest');
delete_option('lws_tk_no_rss');
delete_site_option('lws_tk_no_rss');
delete_option('lws_tk_no_comment_rss');
delete_site_option('lws_tk_no_comment_rss');
delete_option('lws_tk_no_user_sitemap');
delete_site_option('lws_tk_no_user_sitemap');
delete_option('lws_tk_remove_password_strength_meter');
delete_site_option('lws_tk_remove_password_strength_meter');
delete_option('kws_tk_no_self_ping');
delete_site_option('kws_tk_no_self_ping');
delete_option('lws_tk_remove_shortlink');
delete_site_option('lws_tk_remove_shortlink');
delete_option('lws_tk_remove_feeds_links');
delete_site_option('lws_tk_remove_feeds_links');

// Delete Transients
delete_transient('lwstk_remind_me');
delete_site_transient('lwstk_remind_me');
delete_transient('lws_tk_ssl_cert');
delete_site_transient('lws_tk_ssl_cert');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('update_themes');
delete_site_transient('update_themes');

// Clear Cron Jobs
wp_clear_scheduled_hook('wp_version_check');

