-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('webmention_support_post_types', 'refback_home_mentions');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('referer_count');
DELETE FROM wp_usermeta WHERE meta_key IN ('referer_count');
DELETE FROM wp_termmeta WHERE meta_key IN ('referer_count');
DELETE FROM wp_commentmeta WHERE meta_key IN ('referer_count');

