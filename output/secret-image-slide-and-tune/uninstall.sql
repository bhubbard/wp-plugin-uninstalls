-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('secret_image_slide_and_tune_secret_code', 'secret_image_slide_and_tune_image_url', 'secret_image_slide_and_tune_audio_url', 'secret_image_slide_and_tune_start_position', 'secret_image_slide_and_tune_end_position', 'secret_image_slide_and_tune_speed', 'secret_image_slide_and_tune_image_filename', 'secret_image_slide_and_tune_image_size', 'secret_image_slide_and_tune_audio_filename');

