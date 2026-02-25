<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('vacation_text_section_on');
delete_site_option('vacation_text_section_on');
delete_option('vacation_text_section_on_notice');
delete_site_option('vacation_text_section_on_notice');
delete_option('vacation_text_section');
delete_site_option('vacation_text_section');
delete_option('vacation_text_section_to');
delete_site_option('vacation_text_section_to');
delete_option('vacation_text_section_notice');
delete_site_option('vacation_text_section_notice');

