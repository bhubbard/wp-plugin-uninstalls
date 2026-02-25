<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ce_html');
delete_site_option('ce_html');
delete_option('ce_length');
delete_site_option('ce_length');
delete_option('ce_moretext');
delete_site_option('ce_moretext');
delete_option('ce_nofollow');
delete_site_option('ce_nofollow');

