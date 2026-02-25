#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'secret_image_slide_and_tune_secret_code'
wp option delete 'secret_image_slide_and_tune_image_url'
wp option delete 'secret_image_slide_and_tune_audio_url'
wp option delete 'secret_image_slide_and_tune_start_position'
wp option delete 'secret_image_slide_and_tune_end_position'
wp option delete 'secret_image_slide_and_tune_speed'
wp option delete 'secret_image_slide_and_tune_image_filename'
wp option delete 'secret_image_slide_and_tune_image_size'
wp option delete 'secret_image_slide_and_tune_audio_filename'

