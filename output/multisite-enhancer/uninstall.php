<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('MSEHCR_ALLNET_URIS');
delete_site_option('MSEHCR_ALLNET_URIS');
delete_option('MSEHCR_FeedWordpressExtLnkSel');
delete_site_option('MSEHCR_FeedWordpressExtLnkSel');
delete_option('MSEHCR_HeaderScripts');
delete_site_option('MSEHCR_HeaderScripts');

