<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('nv_comment_form_jv');
delete_site_option('nv_comment_form_jv');
delete_option('nv_comment_form_jv_captch');
delete_site_option('nv_comment_form_jv_captch');

