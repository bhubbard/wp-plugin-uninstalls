<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('iconwidth');
delete_site_option('iconwidth');
delete_option('iconBg');
delete_site_option('iconBg');
delete_option('iconhoverBg');
delete_site_option('iconhoverBg');

