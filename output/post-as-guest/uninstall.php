<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('postfield-legend');
delete_site_option('postfield-legend');
delete_option('postfield-rows');
delete_site_option('postfield-rows');
delete_option('category-select');
delete_site_option('category-select');
delete_option('default-categoryid');
delete_site_option('default-categoryid');
delete_option('prepost-code');
delete_site_option('prepost-code');
delete_option('afterpost-code');
delete_site_option('afterpost-code');
delete_option('after-post-msg');
delete_site_option('after-post-msg');
delete_option('notify-admin');
delete_site_option('notify-admin');
delete_option('notify-email');
delete_site_option('notify-email');
delete_option('rc-site-key');
delete_site_option('rc-site-key');
delete_option('rc-secret-key');
delete_site_option('rc-secret-key');

