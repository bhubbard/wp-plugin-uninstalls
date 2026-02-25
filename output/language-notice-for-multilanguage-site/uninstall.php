<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('language_notice_for_multilanguage_site_option_name');
delete_site_option('language_notice_for_multilanguage_site_option_name');

