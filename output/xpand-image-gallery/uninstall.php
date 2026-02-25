<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('xpgalPreviewHeight');
delete_site_option('xpgalPreviewHeight');
delete_option('xpgalAnimSpeed');
delete_site_option('xpgalAnimSpeed');
delete_option('xpgalLinkLove');
delete_site_option('xpgalLinkLove');

