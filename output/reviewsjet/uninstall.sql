-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('reviewsjet_auth', 'reviewsjet_settings', 'reviewsjet_cache');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('reviewsjet_user_preferences');
DELETE FROM wp_usermeta WHERE meta_key IN ('reviewsjet_user_preferences');
DELETE FROM wp_termmeta WHERE meta_key IN ('reviewsjet_user_preferences');
DELETE FROM wp_commentmeta WHERE meta_key IN ('reviewsjet_user_preferences');

