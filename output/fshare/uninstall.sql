-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fshare_skip_single', 'fs_single_pages', 'fs_single_posts', 'fs_active_align', 'fs_intro_height', 'fs_intro_text', 'fs_facebook_share', 'fs_twitter_share', 'fs_xing_share', 'fs_pinterest_share', 'fs_whatsapp_share', 'fs_pocket_share', 'fs_feedly_share', 'fs_active_privacy', 'fs_deactivate_supportlink', 'fs_position', 'fs_privacy_text', 'fs_privacy_link_intro');

