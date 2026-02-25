<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jcorgtoc_active');
delete_site_option('jcorgtoc_active');
delete_option('jcorgtoc_duration');
delete_site_option('jcorgtoc_duration');
delete_option('jcorgtoc_title');
delete_site_option('jcorgtoc_title');
delete_option('jcorgtoc_easingType');
delete_site_option('jcorgtoc_easingType');
delete_option('jcorgtoc_textlength');
delete_site_option('jcorgtoc_textlength');
delete_option('jcorgtoc_height');
delete_site_option('jcorgtoc_height');
delete_option('jcorgtoc_scroll');
delete_site_option('jcorgtoc_scroll');
delete_option('jcorgtoc_scroll_element');
delete_site_option('jcorgtoc_scroll_element');
delete_option('jcorgtoc_position');
delete_site_option('jcorgtoc_position');
delete_option('jcorgtoc_minimize');
delete_site_option('jcorgtoc_minimize');
delete_option('jcorgtoc_linkback');
delete_site_option('jcorgtoc_linkback');
delete_option('jcorgtoc_parenttagclass');
delete_site_option('jcorgtoc_parenttagclass');

