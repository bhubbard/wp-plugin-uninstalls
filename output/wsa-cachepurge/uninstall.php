<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wsa-cachepurge_wsa-installed');
delete_site_option('wsa-cachepurge_wsa-installed');
delete_option('wsa-cachepurge_auto-purge');
delete_site_option('wsa-cachepurge_auto-purge');

