<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cackle_live_chat_siteId');
delete_site_option('cackle_live_chat_siteId');

