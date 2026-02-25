<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tomas_word_private_password_posts');
delete_site_option('tomas_word_private_password_posts');

