-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('suh_banned_message', 'suh_permban_active', 'suh_permban_ready');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('primary_blog');
DELETE FROM wp_usermeta WHERE meta_key IN ('primary_blog');
DELETE FROM wp_termmeta WHERE meta_key IN ('primary_blog');
DELETE FROM wp_commentmeta WHERE meta_key IN ('primary_blog');

