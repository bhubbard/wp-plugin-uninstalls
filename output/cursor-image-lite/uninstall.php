<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cursimli_activation_time');
delete_site_option('cursimli_activation_time');
delete_option('cursimli_options');
delete_site_option('cursimli_options');
delete_option('cursimli_support_notice_dismissed');
delete_site_option('cursimli_support_notice_dismissed');

