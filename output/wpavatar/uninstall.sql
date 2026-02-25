-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpavatar_enable_cravatar', 'wpavatar_cdn_type', 'wpavatar_cravatar_route', 'wpavatar_third_party_mirror', 'wpavatar_custom_cdn', 'wpavatar_hash_method', 'wpavatar_timeout', 'wpavatar_enable_cache', 'wpavatar_cache_path', 'wpavatar_cache_expire', 'wpavatar_seo_alt', 'wpavatar_fallback_mode', 'wpavatar_fallback_avatar', 'wpavatar_shortcode_size', 'wpavatar_shortcode_class', 'wpavatar_shortcode_shape', 'wpavatar_commenters_count', 'wpavatar_commenters_size', 'wpavatar_users_count', 'wpavatar_users_size', 'wpavatar_network_enabled', 'wpavatar_network_enforce', 'wpavatar_network_controlled_options');

