-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sirp_options', 'simple_related_posts_installed');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('simple_related_posts');
DELETE FROM wp_usermeta WHERE meta_key IN ('simple_related_posts');
DELETE FROM wp_termmeta WHERE meta_key IN ('simple_related_posts');
DELETE FROM wp_commentmeta WHERE meta_key IN ('simple_related_posts');

