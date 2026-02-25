-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('livetv_activate_creation_role', 'livetv_defaut_role_wordpress', 'livetv_users_role_selected', 'livetv_h3', 'livetv_view_offline', 'livetv_effect', 'livetv_cache', 'livetv_irc', 'livetv_twitter', 'livetv_facebook', 'livetv_qtip', 'livetv_3col', 'livetv_types_order', 'livetv_disable_normal', 'livetv_span_color', 'livetv_irc_own3d', 'livetv_irc_twitch', 'livetv_irc_justin', 'livetv_width', 'livetv_height', 'livetv_color', 'livetv_visibility', 'livetv_message', 'livetv_registration', 'livetv_autoplay', 'livetv_easy_install');
DELETE FROM wp_options WHERE option_name LIKE 'livetv_irc_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('count_live_own3d', 'count_live_justin', 'count_live_twitch');
DELETE FROM wp_usermeta WHERE meta_key IN ('count_live_own3d', 'count_live_justin', 'count_live_twitch');
DELETE FROM wp_termmeta WHERE meta_key IN ('count_live_own3d', 'count_live_justin', 'count_live_twitch');
DELETE FROM wp_commentmeta WHERE meta_key IN ('count_live_own3d', 'count_live_justin', 'count_live_twitch');

