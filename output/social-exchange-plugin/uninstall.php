<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sxdboptions');
delete_site_option('sxdboptions');
delete_option('sx_active_campaigns');
delete_site_option('sx_active_campaigns');
delete_option('sx_version');
delete_site_option('sx_version');

