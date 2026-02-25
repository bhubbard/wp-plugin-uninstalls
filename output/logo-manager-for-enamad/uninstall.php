<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('enamad_logo');
delete_site_option('enamad_logo');
delete_option('enamad_new_ver_notice_applied_0_2');
delete_site_option('enamad_new_ver_notice_applied_0_2');
delete_option('enamadlogo_redirect_after_activation_option');
delete_site_option('enamadlogo_redirect_after_activation_option');

