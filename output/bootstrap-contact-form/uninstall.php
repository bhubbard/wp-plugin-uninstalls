<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ma_bootstrapcontactform_email');
delete_site_option('ma_bootstrapcontactform_email');

