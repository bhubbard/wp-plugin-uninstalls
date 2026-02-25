<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('contact_me_icon_whatsapp');
delete_site_option('contact_me_icon_whatsapp');

