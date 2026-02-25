#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dotslc_site_url'
wp option delete 'dotslc_display_failure_ways'
wp option delete 'dotslc_failure_message'
wp option delete 'dotslc_failure_redirect'
wp option delete 'dotslc_logo_show'
wp option delete 'dotslc_logo_image_id'
wp option delete 'dotslc_logo_width'
wp option delete 'dotslc_logo_height'
wp option delete 'dotslc_logo_url'
wp option delete 'dotslc_login_form_above_note'
wp option delete 'dotslc_login_note_font_size'
wp option delete 'dotslc_login_note_font_color'
wp option delete 'dotslc_login_password_reset_note'
wp option delete 'dotslc_login_reset_password_link_disable'
wp option delete 'dotslc_background_type'
wp option delete 'dotslc_background_color'
wp option delete 'dotslc_background_image_id'
wp option delete 'dotslc_login_attempt_enable'
wp option delete 'dotslc_max_attempt'
wp option delete 'dotslc_timeout'
wp option delete 'dotslc_timeout_message'
wp option delete 'dotslc_gcaptcha_enable'
wp option delete 'dotslc_gcaptcha_version'
wp option delete 'dotslc_gcaptcha_v2_site_key'
wp option delete 'dotslc_gcaptcha_v2_secret_key'
wp option delete 'dotslc_gcaptcha_v3_site_key'
wp option delete 'dotslc_gcaptcha_v3_secret_key'
wp option delete 'dotslc_gcaptcha_theme'
wp option delete 'dotslc_gcaptcha_threshold'
wp option delete 'dotslc_gcaptcha_size'
wp option delete 'dotslc_password_protection_enable'
wp option delete 'dotslc_protection_password'
wp option delete 'dotslc_maintenance_enable'
wp option delete 'dotslc_maintenance_heading'
wp option delete 'dotslc_maintenance_message'
wp option delete 'dotslc_maintenance_background_image_id'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_dotslc_ip_locked_%' OR option_name LIKE '_site_transient_dotslc_ip_locked_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_dotslc_user_attempts_%' OR option_name LIKE '_site_transient_dotslc_user_attempts_%'"

