<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dentalprime_faq_title');
delete_site_option('dentalprime_faq_title');
delete_option('dentalprime_testimonials_title');
delete_site_option('dentalprime_testimonials_title');

