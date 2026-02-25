-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dotslc_site_url', 'dotslc_display_failure_ways', 'dotslc_failure_message', 'dotslc_failure_redirect', 'dotslc_logo_show', 'dotslc_logo_image_id', 'dotslc_logo_width', 'dotslc_logo_height', 'dotslc_logo_url', 'dotslc_login_form_above_note', 'dotslc_login_note_font_size', 'dotslc_login_note_font_color', 'dotslc_login_password_reset_note', 'dotslc_login_reset_password_link_disable', 'dotslc_background_type', 'dotslc_background_color', 'dotslc_background_image_id', 'dotslc_login_attempt_enable', 'dotslc_max_attempt', 'dotslc_timeout', 'dotslc_timeout_message', 'dotslc_gcaptcha_enable', 'dotslc_gcaptcha_version', 'dotslc_gcaptcha_v2_site_key', 'dotslc_gcaptcha_v2_secret_key', 'dotslc_gcaptcha_v3_site_key', 'dotslc_gcaptcha_v3_secret_key', 'dotslc_gcaptcha_theme', 'dotslc_gcaptcha_threshold', 'dotslc_gcaptcha_size', 'dotslc_password_protection_enable', 'dotslc_protection_password', 'dotslc_maintenance_enable', 'dotslc_maintenance_heading', 'dotslc_maintenance_message', 'dotslc_maintenance_background_image_id');
DELETE FROM wp_options WHERE option_name LIKE 'dotslc_ip_locked_%';
DELETE FROM wp_options WHERE option_name LIKE 'dotslc_user_attempts_%';

