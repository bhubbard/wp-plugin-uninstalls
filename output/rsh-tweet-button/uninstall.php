<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rsh-TweetBtn_options');
delete_site_option('rsh-TweetBtn_options');
delete_option('rsh-TweetBtn_show');
delete_site_option('rsh-TweetBtn_show');

