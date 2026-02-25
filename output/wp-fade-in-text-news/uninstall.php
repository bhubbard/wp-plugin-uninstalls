<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('FadeIn_Title');
delete_site_option('FadeIn_Title');
delete_option('FadeIn_FadeOut');
delete_site_option('FadeIn_FadeOut');
delete_option('FadeIn_FadeIn');
delete_site_option('FadeIn_FadeIn');
delete_option('FadeIn_Fade');
delete_site_option('FadeIn_Fade');
delete_option('FadeIn_FadeStep');
delete_site_option('FadeIn_FadeStep');
delete_option('FadeIn_FadeWait');
delete_site_option('FadeIn_FadeWait');
delete_option('FadeIn_group');
delete_site_option('FadeIn_group');
delete_option('FadeIn_bFadeOutt');
delete_site_option('FadeIn_bFadeOutt');

