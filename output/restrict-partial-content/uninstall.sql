-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('allow_role', 'allow_user', 'open_time', 'open_condition', 'restrict_message');
DELETE FROM wp_usermeta WHERE meta_key IN ('allow_role', 'allow_user', 'open_time', 'open_condition', 'restrict_message');
DELETE FROM wp_termmeta WHERE meta_key IN ('allow_role', 'allow_user', 'open_time', 'open_condition', 'restrict_message');
DELETE FROM wp_commentmeta WHERE meta_key IN ('allow_role', 'allow_user', 'open_time', 'open_condition', 'restrict_message');

