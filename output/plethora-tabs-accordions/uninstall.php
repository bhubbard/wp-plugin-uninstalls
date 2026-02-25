<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('plethoraplugins_pro_tabs_faq_notice_dismissed');
delete_site_option('plethoraplugins_pro_tabs_faq_notice_dismissed');
delete_option('plethoraplugins_tabs_options');
delete_site_option('plethoraplugins_tabs_options');

