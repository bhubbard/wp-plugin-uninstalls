<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('guan_image_notes_enable_comments_thumbnail');
delete_site_option('guan_image_notes_enable_comments_thumbnail');
delete_option('guan_image_notes_enable_comment_sync');
delete_site_option('guan_image_notes_enable_comment_sync');

