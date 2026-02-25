<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('FIFOXMLRSSFEED_FadeWait');
delete_site_option('FIFOXMLRSSFEED_FadeWait');
delete_option('FIFOXMLRSSFEED_rss_0');
delete_site_option('FIFOXMLRSSFEED_rss_0');
delete_option('FIFOXMLRSSFEED_Title');
delete_site_option('FIFOXMLRSSFEED_Title');
delete_option('FIFOXMLRSSFEED_rss_1');
delete_site_option('FIFOXMLRSSFEED_rss_1');
delete_option('FIFOXMLRSSFEED_rss_2');
delete_site_option('FIFOXMLRSSFEED_rss_2');
delete_option('FIFOXMLRSSFEED_rss_3');
delete_site_option('FIFOXMLRSSFEED_rss_3');

