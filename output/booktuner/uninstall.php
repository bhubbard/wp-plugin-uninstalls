<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('booktuner_update_frequency');
delete_site_option('booktuner_update_frequency');
delete_option('booktuner_cachepath');
delete_site_option('booktuner_cachepath');
delete_option('booktuner_limit');
delete_site_option('booktuner_limit');
delete_option('booktuner_userid');
delete_site_option('booktuner_userid');
delete_option('booktuner_shelf');
delete_site_option('booktuner_shelf');
delete_option('booktuner_sort');
delete_site_option('booktuner_sort');
delete_option('booktuner_sort_order');
delete_site_option('booktuner_sort_order');
delete_option('booktuner_display_format');
delete_site_option('booktuner_display_format');
delete_option('booktuner_image_size');
delete_site_option('booktuner_image_size');
delete_option('booktuner_review_length');
delete_site_option('booktuner_review_length');

