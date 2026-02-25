<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('eadv_site_id');
delete_site_option('eadv_site_id');
delete_option('eadv_magic_code_id');
delete_site_option('eadv_magic_code_id');
delete_option('eadv_extra_options');
delete_site_option('eadv_extra_options');

