<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('watermark_installed');
delete_site_option('watermark_installed');
delete_option('watermark_on');
delete_site_option('watermark_on');

