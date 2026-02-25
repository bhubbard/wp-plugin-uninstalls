<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'click5_history_log_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'click5_history_log_module_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'click5_history_log_token_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('click5_history_log_technical_issue');
delete_site_option('click5_history_log_technical_issue');
delete_option('click5_history_log_critical_error');
delete_site_option('click5_history_log_critical_error');
delete_option('click5_history_log_404');
delete_site_option('click5_history_log_404');
delete_option('click5_history_log_alert_email');
delete_site_option('click5_history_log_alert_email');
delete_option('click5_history_log_better-search-replace-pro/better-search-replace.php');
delete_site_option('click5_history_log_better-search-replace-pro/better-search-replace.php');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'version_theme_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('click5_history_log_history-log-by-click5/history-log-by-click5.php');
delete_site_option('click5_history_log_history-log-by-click5/history-log-by-click5.php');
delete_option('click5_log_store_time');
delete_site_option('click5_log_store_time');
delete_option('click5_history_log_clear_date');
delete_site_option('click5_history_log_clear_date');
delete_option('click5_history_log_email_template');
delete_site_option('click5_history_log_email_template');
delete_option('click5_history_log_health-check/health-check.php');
delete_site_option('click5_history_log_health-check/health-check.php');
delete_option('click5_history_log_loco-translate/loco.php');
delete_site_option('click5_history_log_loco-translate/loco.php');
delete_option('click5_history_log_backwpup/backwpup.php');
delete_site_option('click5_history_log_backwpup/backwpup.php');
delete_option('click5_history_log_user-role-editor/user-role-editor.php');
delete_site_option('click5_history_log_user-role-editor/user-role-editor.php');
delete_option('click5_history_log_sg-cachepress/sg-cachepress.php');
delete_site_option('click5_history_log_sg-cachepress/sg-cachepress.php');
delete_option('click5_history_log_module_wordpress_core');
delete_site_option('click5_history_log_module_wordpress_core');
delete_option('my_db_version');
delete_site_option('my_db_version');
delete_option('click5_history_log_module_themes');
delete_site_option('click5_history_log_module_themes');
delete_option('click5_history_log_module_menu');
delete_site_option('click5_history_log_module_menu');
delete_option('click5_history_log_module_plugins');
delete_site_option('click5_history_log_module_plugins');
delete_option('click5_history_log_module_users');
delete_site_option('click5_history_log_module_users');
delete_option('click5_history_log_module_posts');
delete_site_option('click5_history_log_module_posts');
delete_option('click5_history_log_module_pages');
delete_site_option('click5_history_log_module_pages');
delete_option('click5_history_log_acf-extended/acf-extended.php');
delete_site_option('click5_history_log_acf-extended/acf-extended.php');
delete_option('click5_history_log_module_media');
delete_site_option('click5_history_log_module_media');
delete_option('click5_history_log_ninja-forms/ninja-forms.php');
delete_site_option('click5_history_log_ninja-forms/ninja-forms.php');
delete_option('click5_history_log_better-search-replace/better-search-replace.php');
delete_site_option('click5_history_log_better-search-replace/better-search-replace.php');
delete_option('click5_history_log_instagram-feed/instagram-feed.php');
delete_site_option('click5_history_log_instagram-feed/instagram-feed.php');
delete_option('click5_history_log_advanced-custom-fields/acf.php');
delete_site_option('click5_history_log_advanced-custom-fields/acf.php');
delete_option('click5_history_log_advanced-custom-fields-pro/acf.php');
delete_site_option('click5_history_log_advanced-custom-fields-pro/acf.php');
delete_option('click5_history_log_contact-form-7/wp-contact-form-7.php');
delete_site_option('click5_history_log_contact-form-7/wp-contact-form-7.php');
delete_option('click5_history_log_wpforms-lite/wpforms.php');
delete_site_option('click5_history_log_wpforms-lite/wpforms.php');
delete_option('click5_history_log_wpforms/wpforms.php');
delete_site_option('click5_history_log_wpforms/wpforms.php');
delete_option('click5_history_log_redirection/redirection.php');
delete_site_option('click5_history_log_redirection/redirection.php');
delete_option('click5_history_log_google-site-kit/google-site-kit.php');
delete_site_option('click5_history_log_google-site-kit/google-site-kit.php');
delete_option('click5_history_log_wp-google-maps-pro/wp-google-maps-pro.php');
delete_site_option('click5_history_log_wp-google-maps-pro/wp-google-maps-pro.php');
delete_option('click5_history_log_module_site_health');
delete_site_option('click5_history_log_module_site_health');
delete_option('click5_history_log_classic-widgets/classic-widgets.php');
delete_site_option('click5_history_log_classic-widgets/classic-widgets.php');
delete_option('click5_history_log_module_widgets');
delete_site_option('click5_history_log_module_widgets');
delete_option('widget_block');
delete_site_option('widget_block');
delete_option('click5_history_log_wp-google-maps/wpGoogleMaps.php');
delete_site_option('click5_history_log_wp-google-maps/wpGoogleMaps.php');
delete_option('click5_history_log_jetpack/jetpack.php');
delete_site_option('click5_history_log_jetpack/jetpack.php');
delete_option('click5_history_log_duplicate-post/duplicate-post.php');
delete_site_option('click5_history_log_duplicate-post/duplicate-post.php');
delete_option('click5_history_log_all-in-one-wp-migration/all-in-one-wp-migration.php');
delete_site_option('click5_history_log_all-in-one-wp-migration/all-in-one-wp-migration.php');
delete_option('click5_history_log_updraftplus/updraftplus.php');
delete_site_option('click5_history_log_updraftplus/updraftplus.php');
delete_option('click5_history_log_duplicator/duplicator.php	');
delete_site_option('click5_history_log_duplicator/duplicator.php	');
delete_option('click5_history_log_polylang/polylang.php');
delete_site_option('click5_history_log_polylang/polylang.php');
delete_option('polylang');
delete_site_option('polylang');
delete_option('click5_history_log_module_404_error');
delete_site_option('click5_history_log_module_404_error');
delete_option('click5_history_log_string-locator/string-locator.php');
delete_site_option('click5_history_log_string-locator/string-locator.php');
delete_option('click5_history_log_wp-mail-log/wp-mail-log.php');
delete_site_option('click5_history_log_wp-mail-log/wp-mail-log.php');
delete_option('click5_history_log_module_settings');
delete_site_option('click5_history_log_module_settings');
delete_option('click5_history_log_module_wp_engine');
delete_site_option('click5_history_log_module_wp_engine');
delete_option('click5_history_log_classic-editor/classic-editor.php');
delete_site_option('click5_history_log_classic-editor/classic-editor.php');
delete_option('click5_history_log_wordpress-seo/wp-seo.php');
delete_site_option('click5_history_log_wordpress-seo/wp-seo.php');
delete_option('click5_history_log_wordpress-seo-premium/wp-seo-premium.php');
delete_site_option('click5_history_log_wordpress-seo-premium/wp-seo-premium.php');
delete_option('click5_history_log_seo-by-rank-math/rank-math.php');
delete_site_option('click5_history_log_seo-by-rank-math/rank-math.php');
delete_option('click5_history_log_seo-by-rank-math-pro/rank-math-pro.php');
delete_site_option('click5_history_log_seo-by-rank-math-pro/rank-math-pro.php');
delete_option('click5_history_log_all-in-one-seo-pack/all_in_one_seo_pack.php');
delete_site_option('click5_history_log_all-in-one-seo-pack/all_in_one_seo_pack.php');
delete_option('click5_history_log_all-in-one-seo-pack-pro/all_in_one_seo_pack.php');
delete_site_option('click5_history_log_all-in-one-seo-pack-pro/all_in_one_seo_pack.php');
delete_option('click5_history_log_cf7-add-on-by-click5/cf7-addon-by-click5.php');
delete_site_option('click5_history_log_cf7-add-on-by-click5/cf7-addon-by-click5.php');
delete_option('click5_history_log_wpf-add-on-by-click5/wpf-addon-by-click5.php');
delete_site_option('click5_history_log_wpf-add-on-by-click5/wpf-addon-by-click5.php');
delete_option('click5_history_log_click5-crm-add-on-to-ninja-forms/ninja-addon-by-click5.php');
delete_site_option('click5_history_log_click5-crm-add-on-to-ninja-forms/ninja-addon-by-click5.php');
delete_option('click5_history_log_gf-add-on-by-click5/gf-addon-by-click5.php');
delete_site_option('click5_history_log_gf-add-on-by-click5/gf-addon-by-click5.php');
delete_option('click5_history_log_sitemap-by-click5/sitemap-by-click5.php');
delete_site_option('click5_history_log_sitemap-by-click5/sitemap-by-click5.php');
delete_option('click5_history_log_disable-comments-by-click5/disable-comments-by-click5.php');
delete_site_option('click5_history_log_disable-comments-by-click5/disable-comments-by-click5.php');
delete_option('click5_history_log_duplicator/duplicator.php');
delete_site_option('click5_history_log_duplicator/duplicator.php');
delete_option('click5_history_log_limit-login-attempts-reloaded/limit-login-attempts-reloaded.php');
delete_site_option('click5_history_log_limit-login-attempts-reloaded/limit-login-attempts-reloaded.php');
delete_option('limit_login_retries');
delete_site_option('limit_login_retries');
delete_option('limit_login_allowed_lockouts');
delete_site_option('limit_login_allowed_lockouts');
delete_option('limit_login_allowed_retries');
delete_site_option('limit_login_allowed_retries');
delete_option('limit_login_lockout_duration');
delete_site_option('limit_login_lockout_duration');
delete_option('limit_login_valid_duration');
delete_site_option('limit_login_valid_duration');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'click5_history_log_authentication_token_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('click5_history_log_wordfence/wordfence.php');
delete_site_option('click5_history_log_wordfence/wordfence.php');
delete_option('click5_history_log_module_wordpress_users');
delete_site_option('click5_history_log_module_wordpress_users');

// Delete Transients
delete_transient('click5_history_log_mail_transient_technical');
delete_site_transient('click5_history_log_mail_transient_technical');
delete_transient('bsr_results');
delete_site_transient('bsr_results');
delete_transient('click5_history_log_mail_transient_critical');
delete_site_transient('click5_history_log_mail_transient_critical');
delete_transient('healt_check_tests_count');
delete_site_transient('healt_check_tests_count');
delete_transient('healt_check_tests_critical_count');
delete_site_transient('healt_check_tests_critical_count');
delete_transient('click5_history_log_polylang_post_translation_created');
delete_site_transient('click5_history_log_polylang_post_translation_created');
delete_transient('click5_history_log_mail_transient_404');
delete_site_transient('click5_history_log_mail_transient_404');

// Clear Cron Jobs
wp_clear_scheduled_hook('click5_add_every_minutes');
wp_clear_scheduled_hook('sheduled_email');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'from_post' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'from_post' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'from_post' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'from_post' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ppl_language' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ppl_language' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ppl_language' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ppl_language' ) );

