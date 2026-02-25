-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('use_popular_tags', 'custom_keywords', 'use_default_cache', 'can_cache', 'cache_expire_milliseconds');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('user_age', 'user_type', 'user_gender');
DELETE FROM wp_usermeta WHERE meta_key IN ('user_age', 'user_type', 'user_gender');
DELETE FROM wp_termmeta WHERE meta_key IN ('user_age', 'user_type', 'user_gender');
DELETE FROM wp_commentmeta WHERE meta_key IN ('user_age', 'user_type', 'user_gender');

