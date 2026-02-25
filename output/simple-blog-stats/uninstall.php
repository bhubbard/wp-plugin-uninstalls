<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sbs_options');
delete_site_option('sbs_options');
delete_option('simple-blog-stats-dismiss-notice');
delete_site_option('simple-blog-stats-dismiss-notice');

// Delete Transients
delete_transient('sbs_word_count');
delete_site_transient('sbs_word_count');
delete_transient('sbs_post_count');
delete_site_transient('sbs_post_count');
delete_transient('sbs_page_count');
delete_site_transient('sbs_page_count');
delete_transient('sbs_draft_count');
delete_site_transient('sbs_draft_count');
delete_transient('sbs_user_count');
delete_site_transient('sbs_user_count');
delete_transient('sbs_comments_approved_count');
delete_site_transient('sbs_comments_approved_count');
delete_transient('sbs_comments_moderated_count');
delete_site_transient('sbs_comments_moderated_count');
delete_transient('sbs_comments_total_count');
delete_site_transient('sbs_comments_total_count');
delete_transient('sbs_tax_posts_count');
delete_site_transient('sbs_tax_posts_count');
delete_transient('online_status');
delete_site_transient('online_status');

