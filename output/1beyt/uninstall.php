<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('YEK_BEYT_VER');
delete_site_option('YEK_BEYT_VER');

