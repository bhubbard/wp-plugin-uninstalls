<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jennystudio_identicons_color_bg');
delete_site_option('jennystudio_identicons_color_bg');
delete_option('jennystudio_identicons_color_font');
delete_site_option('jennystudio_identicons_color_font');

