<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jptb_label');
delete_site_option('jptb_label');
delete_option('jptb_bg_colour');
delete_site_option('jptb_bg_colour');
delete_option('jptb_text_colour');
delete_site_option('jptb_text_colour');
delete_option('jptb_label_bg_colour');
delete_site_option('jptb_label_bg_colour');
delete_option('jptb_label_text_colour');
delete_site_option('jptb_label_text_colour');
delete_option('jptb_mod_switch');
delete_site_option('jptb_mod_switch');

