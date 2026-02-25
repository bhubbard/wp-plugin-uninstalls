<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('kotivon_cta_whatsapp');
delete_site_option('kotivon_cta_whatsapp');
delete_option('kotivon_cta_phone');
delete_site_option('kotivon_cta_phone');
delete_option('kotivon_cta_whatsapp_color');
delete_site_option('kotivon_cta_whatsapp_color');
delete_option('kotivon_cta_phone_color');
delete_site_option('kotivon_cta_phone_color');
delete_option('kotivon_cta_toggle_color');
delete_site_option('kotivon_cta_toggle_color');

