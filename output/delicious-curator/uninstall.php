<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('delicious-curator-maxitems');
delete_site_option('delicious-curator-maxitems');
delete_option('delicious-curator-delicious-user');
delete_site_option('delicious-curator-delicious-user');
delete_option('delicious-curator-delicious-tag');
delete_site_option('delicious-curator-delicious-tag');
delete_option('delicious-curator-author');
delete_site_option('delicious-curator-author');
delete_option('delicious-curator-category');
delete_site_option('delicious-curator-category');
delete_option('delicious-curator-tags');
delete_site_option('delicious-curator-tags');
delete_option('delicious-curator-post-title');
delete_site_option('delicious-curator-post-title');
delete_option('delicious-curator-header');
delete_site_option('delicious-curator-header');
delete_option('delicious-curator-footer');
delete_site_option('delicious-curator-footer');
delete_option('delicious-curator-item');
delete_site_option('delicious-curator-item');
delete_option('delicious-curator-prev-max-date');
delete_site_option('delicious-curator-prev-max-date');

