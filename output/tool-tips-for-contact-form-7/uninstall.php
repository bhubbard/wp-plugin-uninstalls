<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('max_width');
delete_site_option('max_width');
delete_option('box_arrow');
delete_site_option('box_arrow');
delete_option('box_offset');
delete_site_option('box_offset');
delete_option('question_img');
delete_site_option('question_img');
delete_option('ttfcf7_icon_image');
delete_site_option('ttfcf7_icon_image');
delete_option('ttbg_color');
delete_site_option('ttbg_color');
delete_option('tttext_color');
delete_site_option('tttext_color');

