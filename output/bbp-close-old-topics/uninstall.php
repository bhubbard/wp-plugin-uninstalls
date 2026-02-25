<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_iceable_bbp_close_old_topics');
delete_site_option('_iceable_bbp_close_old_topics');
delete_option('_iceable_bbp_hard_close_old_topics');
delete_site_option('_iceable_bbp_hard_close_old_topics');
delete_option('_iceable_bbp_close_old_topics_age');
delete_site_option('_iceable_bbp_close_old_topics_age');

