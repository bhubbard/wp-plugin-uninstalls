<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bangla_font_cdn_dismiss_notice');
delete_site_option('bangla_font_cdn_dismiss_notice');

