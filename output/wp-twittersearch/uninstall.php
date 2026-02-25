<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wptwittersearch_limit');
delete_site_option('wptwittersearch_limit');
delete_option('wptwittersearch_terms');
delete_site_option('wptwittersearch_terms');
delete_option('wptwittersearch_phrase');
delete_site_option('wptwittersearch_phrase');
delete_option('wptwittersearch_nots');
delete_site_option('wptwittersearch_nots');
delete_option('wptwittersearch_author');
delete_site_option('wptwittersearch_author');
delete_option('wptwittersearch_avatar');
delete_site_option('wptwittersearch_avatar');
delete_option('wptwittersearch_date');
delete_site_option('wptwittersearch_date');
delete_option('wptwittersearch_dateformat');
delete_site_option('wptwittersearch_dateformat');
delete_option('wptwittersearch_lang');
delete_site_option('wptwittersearch_lang');
delete_option('wptwittersearch_name');
delete_site_option('wptwittersearch_name');
delete_option('wptwittersearch_linklove');
delete_site_option('wptwittersearch_linklove');

