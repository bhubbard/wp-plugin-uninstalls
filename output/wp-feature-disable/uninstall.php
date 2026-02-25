<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpfd_editorautosave');
delete_site_option('wpfd_editorautosave');
delete_option('wpfd_postrevisions');
delete_site_option('wpfd_postrevisions');
delete_option('wpfd_commentauthurl');
delete_site_option('wpfd_commentauthurl');
delete_option('wpfd_generatortag');
delete_site_option('wpfd_generatortag');
delete_option('wpfd_coreupdate');
delete_site_option('wpfd_coreupdate');

