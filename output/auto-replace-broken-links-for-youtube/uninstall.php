<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('auto_replace_broken_links_for_youtube_option_name');
delete_site_option('auto_replace_broken_links_for_youtube_option_name');

