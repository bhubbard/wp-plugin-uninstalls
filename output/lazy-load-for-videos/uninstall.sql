-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lly_opt_support_for_widgets', 'll_opt_support_for_tablepress', 'lly_opt', 'llv_opt', 'll_opt_load_scripts', 'll_opt_button_style', 'll_opt_thumbnail_size', 'll_opt_thumbnail_quality', 'll_opt_customcss', 'll_attribute', 'lly_opt_title', 'lly_opt_overlay_text', 'lly_opt_player_preroll', 'lly_opt_player_postroll', 'lly_opt_player_colour_progress', 'lly_opt_player_loadpolicy', 'lly_opt_player_controls', 'lly_opt_cookies', 'llv_opt_title', 'llv_opt_overlay_text', 'llv_opt_player_colour', 'llv_opt_cookies', 'lazyloadvideos_deferred_admin_notices', 'llv_opt_player_preroll', 'llv_opt_player_postroll', 'lly_opt_thumbnail_quality');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('lazyload_thumbnail_quality');
DELETE FROM wp_usermeta WHERE meta_key IN ('lazyload_thumbnail_quality');
DELETE FROM wp_termmeta WHERE meta_key IN ('lazyload_thumbnail_quality');
DELETE FROM wp_commentmeta WHERE meta_key IN ('lazyload_thumbnail_quality');

