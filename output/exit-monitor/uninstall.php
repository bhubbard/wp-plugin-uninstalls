<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('em_campaign_id');
delete_site_option('em_campaign_id');
delete_option('em_pages');
delete_site_option('em_pages');

