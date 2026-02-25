<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('NF_Videomail_Version');
delete_site_option('NF_Videomail_Version');
delete_option('ninja_forms_version');
delete_site_option('ninja_forms_version');
delete_option('ninja_forms_load_deprecated');
delete_site_option('ninja_forms_load_deprecated');

