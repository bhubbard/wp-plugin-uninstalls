-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('msm_my_social_media_info', 'msm_my_social_media_install', 'msm_my_social_media_version');

