<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wdm_salsa_grps');
delete_site_option('wdm_salsa_grps');
delete_option('gf_salsa_options');
delete_site_option('gf_salsa_options');
delete_option('wdm_salsa_fields');
delete_site_option('wdm_salsa_fields');

