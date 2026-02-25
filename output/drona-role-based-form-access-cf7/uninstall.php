<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('drrbfac_role_form_mapping');
delete_site_option('drrbfac_role_form_mapping');

