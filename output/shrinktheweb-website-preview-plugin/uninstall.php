<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('stwwt_dismiss_notice');
delete_site_option('stwwt_dismiss_notice');
delete_option('stwwt_dismiss_notice_time');
delete_site_option('stwwt_dismiss_notice_time');
delete_option('STWThumbnails_KeyId');
delete_site_option('STWThumbnails_KeyId');
delete_option('STWThumbnails');
delete_site_option('STWThumbnails');
delete_option('STWThumbnails_method');
delete_site_option('STWThumbnails_method');
delete_option('STWThumbnails_sz');
delete_site_option('STWThumbnails_sz');
delete_option('STWThumbnails_embedsz');
delete_site_option('STWThumbnails_embedsz');
delete_option('STWThumbnails_permspec');
delete_site_option('STWThumbnails_permspec');
delete_option('STWThumbnails_permfull');
delete_site_option('STWThumbnails_permfull');
delete_option('STWThumbnails_permqual');
delete_site_option('STWThumbnails_permqual');
delete_option('STWThumbnails_stwq');
delete_site_option('STWThumbnails_stwq');

