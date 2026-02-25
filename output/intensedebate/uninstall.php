<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('id_revertMobile');
delete_site_option('id_revertMobile');
delete_option('id_blogAcct');
delete_site_option('id_blogAcct');
delete_option('id_useIDComments');
delete_site_option('id_useIDComments');
delete_option('id_jsCommentLinks');
delete_site_option('id_jsCommentLinks');
delete_option('id_moderationPage');
delete_site_option('id_moderationPage');
delete_option('id_pdxsync');
delete_site_option('id_pdxsync');
delete_option('id_blogKey');
delete_site_option('id_blogKey');
delete_option('id_blogID');
delete_site_option('id_blogID');
delete_option('id_lock_queue');
delete_site_option('id_lock_queue');
delete_option('id_import_token');
delete_site_option('id_import_token');
delete_option('id_import_comment_id');
delete_site_option('id_import_comment_id');
delete_option('comment_previously_approved');
delete_site_option('comment_previously_approved');
delete_option('disallowed_keys');
delete_site_option('disallowed_keys');
delete_option('wordpress_api_key');
delete_site_option('wordpress_api_key');
delete_option('id_signup_step');
delete_site_option('id_signup_step');
delete_option('id_hideSettingsTop');
delete_site_option('id_hideSettingsTop');
delete_option('id_recent_comments_count');
delete_site_option('id_recent_comments_count');
delete_option('id_top_commenters_count');
delete_site_option('id_top_commenters_count');
delete_option('id_most_commented_posts_count');
delete_site_option('id_most_commented_posts_count');

