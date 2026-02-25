<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('smartupworld_video_modal_dev_mode');
delete_site_option('smartupworld_video_modal_dev_mode');

