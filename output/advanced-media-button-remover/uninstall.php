<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('advanced_media_button_remover_options');
delete_site_option('advanced_media_button_remover_options');

