<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mimetype_link_icon_options');
delete_site_option('mimetype_link_icon_options');
delete_option('mimetype_link_icons_filesize_cache');
delete_site_option('mimetype_link_icons_filesize_cache');

