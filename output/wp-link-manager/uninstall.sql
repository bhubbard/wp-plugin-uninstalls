-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%about_text';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('shortlink_target_url', 'shortlink_redirect_type', 'shortlink_hits');
DELETE FROM wp_usermeta WHERE meta_key IN ('shortlink_target_url', 'shortlink_redirect_type', 'shortlink_hits');
DELETE FROM wp_termmeta WHERE meta_key IN ('shortlink_target_url', 'shortlink_redirect_type', 'shortlink_hits');
DELETE FROM wp_commentmeta WHERE meta_key IN ('shortlink_target_url', 'shortlink_redirect_type', 'shortlink_hits');

