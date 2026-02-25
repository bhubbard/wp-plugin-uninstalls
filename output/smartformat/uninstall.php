<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('smartformat_logo_attachment_id');
delete_site_option('smartformat_logo_attachment_id');

