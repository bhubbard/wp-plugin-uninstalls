-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('duplicate_post_copyexcerpt');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('custom_date');
DELETE FROM wp_usermeta WHERE meta_key IN ('custom_date');
DELETE FROM wp_termmeta WHERE meta_key IN ('custom_date');
DELETE FROM wp_commentmeta WHERE meta_key IN ('custom_date');

