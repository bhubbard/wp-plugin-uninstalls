<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('autolinkkw_keyword_map');
delete_site_option('autolinkkw_keyword_map');
delete_option('autolinkkw_max_links');
delete_site_option('autolinkkw_max_links');
delete_option('autolinkkw_nofollow');
delete_site_option('autolinkkw_nofollow');
delete_option('autolinkkw_newtab');
delete_site_option('autolinkkw_newtab');

