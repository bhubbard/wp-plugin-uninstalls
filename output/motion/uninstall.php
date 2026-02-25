<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('motion_option_boxClass');
delete_site_option('motion_option_boxClass');
delete_option('motion_option_offset');
delete_site_option('motion_option_offset');
delete_option('motion_option_mobile');
delete_site_option('motion_option_mobile');
delete_option('motion_option_live');
delete_site_option('motion_option_live');
delete_option('motion_option_customCSS');
delete_site_option('motion_option_customCSS');
delete_option('motion_option_motionClass');
delete_site_option('motion_option_motionClass');

