<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gwolle_gb-showSmilies');
delete_site_option('gwolle_gb-showSmilies');
delete_option('gwolle_gb-showLineBreaks');
delete_site_option('gwolle_gb-showLineBreaks');
delete_option('gwolle_gb-showEntryIcons');
delete_site_option('gwolle_gb-showEntryIcons');
delete_option('gwolle_gb-store_ip');
delete_site_option('gwolle_gb-store_ip');
delete_option('gwolle_gb-entries_per_page');
delete_site_option('gwolle_gb-entries_per_page');
delete_option('gwolle_gb-akismet-active');
delete_site_option('gwolle_gb-akismet-active');
delete_option('gwolle_gb-notifyByMail');
delete_site_option('gwolle_gb-notifyByMail');
delete_option('gwolle_gb-require_login');
delete_site_option('gwolle_gb-require_login');
delete_option('gwolle_gb-labels_float');
delete_site_option('gwolle_gb-labels_float');
delete_option('gwolle_gb-header');
delete_site_option('gwolle_gb-header');
delete_option('gwolle_gb-notice');
delete_site_option('gwolle_gb-notice');
delete_option('gwolle_gb-form_ajax');
delete_site_option('gwolle_gb-form_ajax');
delete_option('gwolle_gb-form');
delete_site_option('gwolle_gb-form');
delete_option('gwolle_gb-entriesPerPage');
delete_site_option('gwolle_gb-entriesPerPage');
delete_option('gwolle_gb-excerpt_length');
delete_site_option('gwolle_gb-excerpt_length');
delete_option('gwolle_gb-linkAuthorWebsite');
delete_site_option('gwolle_gb-linkAuthorWebsite');
delete_option('gwolle_gb-admin_style');
delete_site_option('gwolle_gb-admin_style');
delete_option('gwolle_gb-navigation');
delete_site_option('gwolle_gb-navigation');
delete_option('gwolle_gb-paginate_all');
delete_site_option('gwolle_gb-paginate_all');
delete_option('gwolle_gb-read');
delete_site_option('gwolle_gb-read');
delete_option('gwolle_gb-moderate-entries');
delete_site_option('gwolle_gb-moderate-entries');
delete_option('gwolle_gb-refuse-spam');
delete_site_option('gwolle_gb-refuse-spam');
delete_option('gwolle_gb-honeypot');
delete_site_option('gwolle_gb-honeypot');
delete_option('gwolle_gb-nonce');
delete_site_option('gwolle_gb-nonce');
delete_option('gwolle_gb-longtext');
delete_site_option('gwolle_gb-longtext');
delete_option('gwolle_gb-linkchecker');
delete_site_option('gwolle_gb-linkchecker');
delete_option('gwolle_gb-timeout');
delete_site_option('gwolle_gb-timeout');
delete_option('gwolle_gb-sfs');
delete_site_option('gwolle_gb-sfs');
delete_option('gwolle_gb-antispam-question');
delete_site_option('gwolle_gb-antispam-question');
delete_option('gwolle_gb-antispam-answer');
delete_site_option('gwolle_gb-antispam-answer');
delete_option('gwolle_gb_addon-moderation_keys');
delete_site_option('gwolle_gb_addon-moderation_keys');
delete_option('gwolle_gb-mail-from');
delete_site_option('gwolle_gb-mail-from');
delete_option('gwolle_gb-notify-with-spam');
delete_site_option('gwolle_gb-notify-with-spam');
delete_option('gwolle_gb-adminMailContent');
delete_site_option('gwolle_gb-adminMailContent');
delete_option('gwolle_gb-mail_author');
delete_site_option('gwolle_gb-mail_author');
delete_option('gwolle_gb-authorMailContent');
delete_site_option('gwolle_gb-authorMailContent');
delete_option('gwolle_gb-mail_author_moderation');
delete_site_option('gwolle_gb-mail_author_moderation');
delete_option('gwolle_gb-authormoderationcontent');
delete_site_option('gwolle_gb-authormoderationcontent');
delete_option('gwolle_gb-mail_admin_replyContent');
delete_site_option('gwolle_gb-mail_admin_replyContent');
delete_option('gwolle_gb_version');
delete_site_option('gwolle_gb_version');
delete_option('gwolle_gb-access-level');
delete_site_option('gwolle_gb-access-level');
delete_option('gwolle_gb-checkForImport');
delete_site_option('gwolle_gb-checkForImport');
delete_option('gwolle_gb-post_ID');
delete_site_option('gwolle_gb-post_ID');
delete_option('gwolle_gb-guestbookOnly');
delete_site_option('gwolle_gb-guestbookOnly');
delete_option('gwolle_gb-defaultMailText');
delete_site_option('gwolle_gb-defaultMailText');
delete_option('gwolle_gb-recaptcha-active');
delete_site_option('gwolle_gb-recaptcha-active');
delete_option('gwolle_gb-cleantalk-active');
delete_site_option('gwolle_gb-cleantalk-active');
delete_option('gwolle_gb-honeypot_value');
delete_site_option('gwolle_gb-honeypot_value');
delete_option('wordpress_api_key');
delete_site_option('wordpress_api_key');
delete_option('disallowed_keys');
delete_site_option('disallowed_keys');

// Delete Transients
delete_transient('gwolle_gb_menu_counter');
delete_site_transient('gwolle_gb_menu_counter');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_gwolle_gb_check_key_%', '_site_transient_gwolle_gb_check_key_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_gwolle_gb_sfs_%', '_site_transient_gwolle_gb_sfs_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'gwolle_gb_book_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'gwolle_gb_book_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'gwolle_gb_book_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'gwolle_gb_book_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'gwolle_gb_read' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'gwolle_gb_read' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'gwolle_gb_read' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'gwolle_gb_read' ) );

