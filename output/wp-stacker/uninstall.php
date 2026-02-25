<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpstacker_version');
delete_site_option('wpstacker_version');
delete_option('wpstacker_statistics');
delete_site_option('wpstacker_statistics');
delete_option('wpstacker_key_a');
delete_site_option('wpstacker_key_a');
delete_option('wpstacker_key_b');
delete_site_option('wpstacker_key_b');
delete_option('wpstacker_pocket_consumer_key');
delete_site_option('wpstacker_pocket_consumer_key');
delete_option('wpstacker_pocket_access_key');
delete_site_option('wpstacker_pocket_access_key');
delete_option('wpstacker_pocket_username');
delete_site_option('wpstacker_pocket_username');
delete_option('wpstacker_entry_building');
delete_site_option('wpstacker_entry_building');
delete_option('wpstacker_title');
delete_site_option('wpstacker_title');
delete_option('wpstacker_introduction_text');
delete_site_option('wpstacker_introduction_text');
delete_option('wpstacker_statements_text');
delete_site_option('wpstacker_statements_text');
delete_option('wpstacker_language');
delete_site_option('wpstacker_language');
delete_option('wpstacker_pocket_consumer_key_custom');
delete_site_option('wpstacker_pocket_consumer_key_custom');
delete_option('wpstacker_links_to_use');
delete_site_option('wpstacker_links_to_use');
delete_option('wpstacker_faved');
delete_site_option('wpstacker_faved');
delete_option('wpstacker_order');
delete_site_option('wpstacker_order');
delete_option('wpstacker_mark_as_readed');
delete_site_option('wpstacker_mark_as_readed');
delete_option('wpstacker_clean_url');
delete_site_option('wpstacker_clean_url');
delete_option('wpstacker_meta_keyword_as_tags');
delete_site_option('wpstacker_meta_keyword_as_tags');
delete_option('wpstacker_reference_wpstacker');
delete_site_option('wpstacker_reference_wpstacker');
delete_option('wpstacker_post_status');
delete_site_option('wpstacker_post_status');
delete_option('wpstacker_post_format');
delete_site_option('wpstacker_post_format');
delete_option('wpstacker_post_category');
delete_site_option('wpstacker_post_category');
delete_option('wpstacker_comment_status');
delete_site_option('wpstacker_comment_status');
delete_option('wpstacker_ping_status');
delete_site_option('wpstacker_ping_status');

