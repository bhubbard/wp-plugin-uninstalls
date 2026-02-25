<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hetjens_feed_redirect_feed_url');
delete_site_option('hetjens_feed_redirect_feed_url');
delete_option('hetjens_feed_redirect_comments_url');
delete_site_option('hetjens_feed_redirect_comments_url');

