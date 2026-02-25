-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pixassist_activated_themes', 'pixelgrade_assistant_version', 'sidebars_widgets', 'recently_activated', 'pixassist_wordpress_minimum_supported', 'nova_menu_order', 'classic-editor-replace', 'classic-editor-allow-users', 'update_themes', '_pixassist_activation_redirect', 'update_plugins', 'update_core', 'jetpack-portfolio-count-cache');
DELETE FROM wp_options WHERE option_name LIKE 'widget_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('pixelgrade_user_login', 'pixassist_oauth_token', 'pixassist_oauth_token_secret', 'pixassist_oauth_verifier', 'pixassist_user_ID', 'pixelgrade_user_email', 'pixelgrade_display_name', 'pixassist_force_disconnected', '_menu_item_menu_item_parent', '_menu_item_url', '_menu_item_object_id', 'nova_price', 'classic-editor-remember');
DELETE FROM wp_usermeta WHERE meta_key IN ('pixelgrade_user_login', 'pixassist_oauth_token', 'pixassist_oauth_token_secret', 'pixassist_oauth_verifier', 'pixassist_user_ID', 'pixelgrade_user_email', 'pixelgrade_display_name', 'pixassist_force_disconnected', '_menu_item_menu_item_parent', '_menu_item_url', '_menu_item_object_id', 'nova_price', 'classic-editor-remember');
DELETE FROM wp_termmeta WHERE meta_key IN ('pixelgrade_user_login', 'pixassist_oauth_token', 'pixassist_oauth_token_secret', 'pixassist_oauth_verifier', 'pixassist_user_ID', 'pixelgrade_user_email', 'pixelgrade_display_name', 'pixassist_force_disconnected', '_menu_item_menu_item_parent', '_menu_item_url', '_menu_item_object_id', 'nova_price', 'classic-editor-remember');
DELETE FROM wp_commentmeta WHERE meta_key IN ('pixelgrade_user_login', 'pixassist_oauth_token', 'pixassist_oauth_token_secret', 'pixassist_oauth_verifier', 'pixassist_user_ID', 'pixelgrade_user_email', 'pixelgrade_display_name', 'pixassist_force_disconnected', '_menu_item_menu_item_parent', '_menu_item_url', '_menu_item_object_id', 'nova_price', 'classic-editor-remember');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';

