-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('new_message_ios', 'new_message_android', 'new_startdelay', 'new_lifespan', 'new_expire_days', 'new_animationin', 'new_animationout', 'new_bottomoffset', 'new_touchicon_url', 'new_web_app_title', 'new_returning_visitors_only', 'new_precomposed_icon', 'new_enable_balloon_ios_frontend', 'new_install_prompt_android', 'new_enable_pwa', 'new_balloon_display_frontend', 'new_athswp_frontend_pwa_start_url', 'new_athswp_pwa_custom_url', 'new_athswp_delete_data_on_uninstall');
DELETE FROM wp_options WHERE option_name LIKE 'simple_aths_first_visit_%';
DELETE FROM wp_options WHERE option_name LIKE 'simple_aths_balloon_closed_%';

