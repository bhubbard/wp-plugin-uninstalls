<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('classic_widgets_and_post_editor_options');
delete_site_option('classic_widgets_and_post_editor_options');

