<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('GSOF_gosquared_site_token');
delete_site_option('GSOF_gosquared_site_token');
delete_option('GSOF_gosquared_identify');
delete_site_option('GSOF_gosquared_identify');
delete_option('GSOF_gosquared_gravity_forms');
delete_site_option('GSOF_gosquared_gravity_forms');

