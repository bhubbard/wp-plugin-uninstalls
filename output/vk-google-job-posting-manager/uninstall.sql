-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vgjpm_create_jobpost_posttype', 'vkjpm_common_fields');
DELETE FROM wp_options WHERE option_name LIKE 'vgjpm_post_type_display_customfields%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('vkjp_title');
DELETE FROM wp_usermeta WHERE meta_key IN ('vkjp_title');
DELETE FROM wp_termmeta WHERE meta_key IN ('vkjp_title');
DELETE FROM wp_commentmeta WHERE meta_key IN ('vkjp_title');

