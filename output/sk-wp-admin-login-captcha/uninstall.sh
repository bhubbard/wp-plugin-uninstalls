#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_math_captcha'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_image_captcha'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_google_captcha'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_google_captcha_v3'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_general_config_captcha'"

