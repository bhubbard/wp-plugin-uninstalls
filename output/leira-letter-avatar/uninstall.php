<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('leira_letter_avatar_rounded');
delete_site_option('leira_letter_avatar_rounded');
delete_option('leira_letter_avatar_gravatar');
delete_site_option('leira_letter_avatar_gravatar');
delete_option('leira_letter_avatar_format');
delete_site_option('leira_letter_avatar_format');
delete_option('leira_letter_avatar_letters');
delete_site_option('leira_letter_avatar_letters');
delete_option('leira_letter_avatar_bold');
delete_site_option('leira_letter_avatar_bold');
delete_option('leira_letter_avatar_uppercase');
delete_site_option('leira_letter_avatar_uppercase');
delete_option('leira_letter_avatar_color_method');
delete_site_option('leira_letter_avatar_color_method');
delete_option('leira_letter_avatar_color');
delete_site_option('leira_letter_avatar_color');
delete_option('leira_letter_avatar_method');
delete_site_option('leira_letter_avatar_method');
delete_option('leira_letter_avatar_bg');
delete_site_option('leira_letter_avatar_bg');
delete_option('leira_letter_avatar_bgs');
delete_site_option('leira_letter_avatar_bgs');
delete_option('leira_letter_avatar_footer_rated');
delete_site_option('leira_letter_avatar_footer_rated');

