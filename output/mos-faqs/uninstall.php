<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mos_faq_option');
delete_site_option('mos_faq_option');
delete_option('mos_faq_do_activation_redirect');
delete_site_option('mos_faq_do_activation_redirect');

