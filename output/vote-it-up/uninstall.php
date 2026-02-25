<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('voteiu_dbversion');
delete_site_option('voteiu_dbversion');
delete_option('voteiu_skin');
delete_site_option('voteiu_skin');
delete_option('voteiu_allowownvote');
delete_site_option('voteiu_allowownvote');
delete_option('voteiu_aftervotetext');
delete_site_option('voteiu_aftervotetext');
delete_option('voteiu_votetext');
delete_site_option('voteiu_votetext');
delete_option('voteiu_sinktext');
delete_site_option('voteiu_sinktext');
delete_option('voteiu_allowguests');
delete_site_option('voteiu_allowguests');
delete_option('voteiu_widgetcount');
delete_site_option('voteiu_widgetcount');
delete_option('voteiu_initialoffset');
delete_site_option('voteiu_initialoffset');
delete_option('voteiu_limit');
delete_site_option('voteiu_limit');
delete_option('voteiu_autoinsert');
delete_site_option('voteiu_autoinsert');
delete_option('voteiu_allowsinks');
delete_site_option('voteiu_allowsinks');
delete_option('voteiu_excluded');
delete_site_option('voteiu_excluded');
delete_option('voteiu_usevotetext');
delete_site_option('voteiu_usevotetext');
delete_option('widget_MostVotedAllTime');
delete_site_option('widget_MostVotedAllTime');

