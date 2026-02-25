-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_buddydrive_user_quota', '_buddydrive_version', '_buddydrive_max_upload', '_buddydrive_allowed_extensions', '_buddydrive_is_new_install', '_buddydrive_activation_redirect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_buddydrive_sharing_option', '_buddydrive_total_space', '_buddydrive_sharing_groups');
DELETE FROM wp_usermeta WHERE meta_key IN ('_buddydrive_sharing_option', '_buddydrive_total_space', '_buddydrive_sharing_groups');
DELETE FROM wp_termmeta WHERE meta_key IN ('_buddydrive_sharing_option', '_buddydrive_total_space', '_buddydrive_sharing_groups');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_buddydrive_sharing_option', '_buddydrive_total_space', '_buddydrive_sharing_groups');

