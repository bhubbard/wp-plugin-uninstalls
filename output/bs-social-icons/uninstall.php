<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bsoft_admin_notices');
delete_site_option('bsoft_admin_notices');
delete_option('bsoft_redirect_link');
delete_site_option('bsoft_redirect_link');
delete_option('bsoft_redirect_name');
delete_site_option('bsoft_redirect_name');
delete_option('bsoft_image_attachment_id');
delete_site_option('bsoft_image_attachment_id');

