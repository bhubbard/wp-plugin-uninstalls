<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dx_redirect_to');
delete_site_option('dx_redirect_to');
delete_option('dx_my_editor');
delete_site_option('dx_my_editor');
delete_option('dx_margin_top');
delete_site_option('dx_margin_top');
delete_option('dx-dark-site-image');
delete_site_option('dx-dark-site-image');
delete_option('dx_redirect_name');
delete_site_option('dx_redirect_name');
delete_option('dx_editor_id');
delete_site_option('dx_editor_id');
delete_option('dx_margin_field_name');
delete_site_option('dx_margin_field_name');
delete_option('image_url');
delete_site_option('image_url');

