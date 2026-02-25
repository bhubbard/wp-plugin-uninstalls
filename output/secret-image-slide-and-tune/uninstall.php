<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('secret_image_slide_and_tune_secret_code');
delete_site_option('secret_image_slide_and_tune_secret_code');
delete_option('secret_image_slide_and_tune_image_url');
delete_site_option('secret_image_slide_and_tune_image_url');
delete_option('secret_image_slide_and_tune_audio_url');
delete_site_option('secret_image_slide_and_tune_audio_url');
delete_option('secret_image_slide_and_tune_start_position');
delete_site_option('secret_image_slide_and_tune_start_position');
delete_option('secret_image_slide_and_tune_end_position');
delete_site_option('secret_image_slide_and_tune_end_position');
delete_option('secret_image_slide_and_tune_speed');
delete_site_option('secret_image_slide_and_tune_speed');
delete_option('secret_image_slide_and_tune_image_filename');
delete_site_option('secret_image_slide_and_tune_image_filename');
delete_option('secret_image_slide_and_tune_image_size');
delete_site_option('secret_image_slide_and_tune_image_size');
delete_option('secret_image_slide_and_tune_audio_filename');
delete_site_option('secret_image_slide_and_tune_audio_filename');

