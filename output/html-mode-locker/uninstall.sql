-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('html_mode_lock', 'html_mode_lock_post_types');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('html_mode_lock');
DELETE FROM wp_usermeta WHERE meta_key IN ('html_mode_lock');
DELETE FROM wp_termmeta WHERE meta_key IN ('html_mode_lock');
DELETE FROM wp_commentmeta WHERE meta_key IN ('html_mode_lock');

