<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aet_turn_on');
delete_site_option('aet_turn_on');
delete_option('aet_block_manually_added_tags');
delete_site_option('aet_block_manually_added_tags');
delete_option('aet_examine_post_title');
delete_site_option('aet_examine_post_title');
delete_option('aet_examine_post_content');
delete_site_option('aet_examine_post_content');
delete_option('aet_filter_by_category');
delete_site_option('aet_filter_by_category');
delete_option('aet_clean_uninstall');
delete_site_option('aet_clean_uninstall');
delete_option('aet_included_categories');
delete_site_option('aet_included_categories');
delete_option('aet_automatic_tagging_included_categories');
delete_site_option('aet_automatic_tagging_included_categories');
delete_option('aet_automatic_tagging');
delete_site_option('aet_automatic_tagging');

