<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('asfgf_subject_text');
delete_site_option('asfgf_subject_text');
delete_option('asfgf_form_id');
delete_site_option('asfgf_form_id');
delete_option('asfgf_kill_spam');
delete_site_option('asfgf_kill_spam');
delete_option('asfgf_enabled');
delete_site_option('asfgf_enabled');
delete_option('asfgf_keywords_enabled');
delete_site_option('asfgf_keywords_enabled');
delete_option('asfgf_keywords');
delete_site_option('asfgf_keywords');
delete_option('asfgf_cyrillic');
delete_site_option('asfgf_cyrillic');

