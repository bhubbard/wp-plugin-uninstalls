<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lon');
delete_site_option('lon');
delete_option('lban_attachment_id');
delete_site_option('lban_attachment_id');
delete_option('lurl');
delete_site_option('lurl');
delete_option('ron');
delete_site_option('ron');
delete_option('rban_attachment_id');
delete_site_option('rban_attachment_id');
delete_option('rurl');
delete_site_option('rurl');
delete_option('topoffset');
delete_site_option('topoffset');
delete_option('bwidth');
delete_site_option('bwidth');
delete_option('tab');
delete_site_option('tab');
delete_option('mode');
delete_site_option('mode');
delete_option('hideon');
delete_site_option('hideon');

