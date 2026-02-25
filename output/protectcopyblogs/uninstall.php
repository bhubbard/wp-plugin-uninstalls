<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('PreventCopyBlogs_ser');
delete_site_option('PreventCopyBlogs_ser');
delete_option('PreventCopyBlogs_usr');
delete_site_option('PreventCopyBlogs_usr');
delete_option('PreventCopyBlogs_pass');
delete_site_option('PreventCopyBlogs_pass');
delete_option('PreventCopyBlogs_dbname');
delete_site_option('PreventCopyBlogs_dbname');
delete_option('PreventCopyBlogs_dbdel');
delete_site_option('PreventCopyBlogs_dbdel');
delete_option('PreventCopyBlogs_dbno');
delete_site_option('PreventCopyBlogs_dbno');
delete_option('PreventCopyBlogs_nrc');
delete_site_option('PreventCopyBlogs_nrc');
delete_option('PreventCopyBlogs_nts');
delete_site_option('PreventCopyBlogs_nts');
delete_option('PreventCopyBlogs_nrc_t');
delete_site_option('PreventCopyBlogs_nrc_t');
delete_option('PreventCopyBlogs_nrc_text');
delete_site_option('PreventCopyBlogs_nrc_text');

