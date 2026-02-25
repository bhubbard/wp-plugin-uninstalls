<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('incognito_cls_options');
delete_site_option('incognito_cls_options');
delete_option('incognito_ats_settings');
delete_site_option('incognito_ats_settings');
delete_option('incognito_restrictions');
delete_site_option('incognito_restrictions');

