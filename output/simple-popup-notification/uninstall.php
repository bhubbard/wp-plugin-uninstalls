<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('simppono_setcookieexpire');
delete_site_option('simppono_setcookieexpire');
delete_option('simppono_enabled');
delete_site_option('simppono_enabled');
delete_option('simppono_background_color');
delete_site_option('simppono_background_color');
delete_option('simppono_text_color');
delete_site_option('simppono_text_color');
delete_option('simppono_heading');
delete_site_option('simppono_heading');
delete_option('simppono_description');
delete_site_option('simppono_description');
delete_option('simppono_cta_button');
delete_site_option('simppono_cta_button');
delete_option('simppono_cta_button_link');
delete_site_option('simppono_cta_button_link');
delete_option('simppono_cta_button_bg_color');
delete_site_option('simppono_cta_button_bg_color');
delete_option('simppono_cta_button_text_color');
delete_site_option('simppono_cta_button_text_color');
delete_option('simppono_image_upload');
delete_site_option('simppono_image_upload');
delete_option('simppono_select_option');
delete_site_option('simppono_select_option');
delete_option('simppono_popup_width');
delete_site_option('simppono_popup_width');

