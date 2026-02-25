<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('acronym_acronyms');
delete_site_option('acronym_acronyms');
delete_option('acronym_content');
delete_site_option('acronym_content');
delete_option('acronym_comments');
delete_site_option('acronym_comments');
delete_option('acronym_html5');
delete_site_option('acronym_html5');

