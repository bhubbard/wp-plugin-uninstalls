<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jlwebcom_chatwsp_telefono');
delete_site_option('jlwebcom_chatwsp_telefono');
delete_option('jlwebcom_chatwsp_mensaje');
delete_site_option('jlwebcom_chatwsp_mensaje');

