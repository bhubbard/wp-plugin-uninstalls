<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('kmithi-fld-enable');
delete_site_option('kmithi-fld-enable');
delete_option('kmithi-fld-enable-template-type');
delete_site_option('kmithi-fld-enable-template-type');
delete_option('kmithi-fld-avoid-for-user-roles');
delete_site_option('kmithi-fld-avoid-for-user-roles');
delete_option('kmithi-fld-message');
delete_site_option('kmithi-fld-message');
delete_option('kmithi-fld-displaytooptions');
delete_site_option('kmithi-fld-displaytooptions');
delete_option('kmithi-fld-pages');
delete_site_option('kmithi-fld-pages');

