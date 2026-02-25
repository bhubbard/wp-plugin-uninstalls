-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ibn_settings', 'ibn_title', 'ibn_background_color', 'ibn_text_color', 'ibn_pinned_post_id');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ibn_expiration_date', 'ibn_breaking_title');
DELETE FROM wp_usermeta WHERE meta_key IN ('ibn_expiration_date', 'ibn_breaking_title');
DELETE FROM wp_termmeta WHERE meta_key IN ('ibn_expiration_date', 'ibn_breaking_title');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ibn_expiration_date', 'ibn_breaking_title');

