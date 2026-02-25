-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('show_comments_cookies_opt_in', 'facetwp_settings', 'sm_advanced_palette_output', 'sm_site_color_variation', 'novablocks_google_maps_api_key');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('nb_conversation_starter_user_id', 'nb_conversation_starter_content', 'nb_comment_highlighted_by', 'nb_commenter_background', 'nb_conversation_starter_subtitle', 'novablocks_hero_position_indicators', 'supernova_prevent_duplicate');
DELETE FROM wp_usermeta WHERE meta_key IN ('nb_conversation_starter_user_id', 'nb_conversation_starter_content', 'nb_comment_highlighted_by', 'nb_commenter_background', 'nb_conversation_starter_subtitle', 'novablocks_hero_position_indicators', 'supernova_prevent_duplicate');
DELETE FROM wp_termmeta WHERE meta_key IN ('nb_conversation_starter_user_id', 'nb_conversation_starter_content', 'nb_comment_highlighted_by', 'nb_commenter_background', 'nb_conversation_starter_subtitle', 'novablocks_hero_position_indicators', 'supernova_prevent_duplicate');
DELETE FROM wp_commentmeta WHERE meta_key IN ('nb_conversation_starter_user_id', 'nb_conversation_starter_content', 'nb_comment_highlighted_by', 'nb_commenter_background', 'nb_conversation_starter_subtitle', 'novablocks_hero_position_indicators', 'supernova_prevent_duplicate');

