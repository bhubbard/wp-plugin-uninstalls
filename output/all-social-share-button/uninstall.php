<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('social_share_title');
delete_site_option('social_share_title');
delete_option('socialcheckbox');
delete_site_option('socialcheckbox');

