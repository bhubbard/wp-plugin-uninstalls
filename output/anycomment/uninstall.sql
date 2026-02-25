-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('anycomment-generic', 'anycomment-social', 'anycomment_migration');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('anycomment_social_original_username', 'anycomment_social');
DELETE FROM wp_usermeta WHERE meta_key IN ('anycomment_social_original_username', 'anycomment_social');
DELETE FROM wp_termmeta WHERE meta_key IN ('anycomment_social_original_username', 'anycomment_social');
DELETE FROM wp_commentmeta WHERE meta_key IN ('anycomment_social_original_username', 'anycomment_social');

