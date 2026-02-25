<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dubeb_notice_dismissed');
delete_site_option('dubeb_notice_dismissed');
delete_option('dubeb_disabled_blocks');
delete_site_option('dubeb_disabled_blocks');

