<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('goosp_lang_code');
delete_site_option('goosp_lang_code');
delete_option('goosp_disp_clos');
delete_site_option('goosp_disp_clos');
delete_option('goosp_edit_post');
delete_site_option('goosp_edit_post');
delete_option('goosp_edit_page');
delete_site_option('goosp_edit_page');
delete_option('goosp_edit_cmnt');
delete_site_option('goosp_edit_cmnt');
delete_option('goosp_lang_chkb');
delete_site_option('goosp_lang_chkb');

