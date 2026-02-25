<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sp_spr_payuromania_user');
delete_site_option('sp_spr_payuromania_user');
delete_option('sp_spr_payuromania_password');
delete_site_option('sp_spr_payuromania_password');

