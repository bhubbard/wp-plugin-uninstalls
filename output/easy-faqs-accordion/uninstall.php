<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('card_header_color');
delete_site_option('card_header_color');
delete_option('faq_font_color');
delete_site_option('faq_font_color');
delete_option('card_body_bgcolor');
delete_site_option('card_body_bgcolor');
delete_option('card_body_fontcolor');
delete_site_option('card_body_fontcolor');
delete_option('faq_section_width');
delete_site_option('faq_section_width');

