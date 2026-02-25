-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('zempr_active_scripts_v1');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_zempr_location', '_zempr_condition', '_zempr_post_ids');
DELETE FROM wp_usermeta WHERE meta_key IN ('_zempr_location', '_zempr_condition', '_zempr_post_ids');
DELETE FROM wp_termmeta WHERE meta_key IN ('_zempr_location', '_zempr_condition', '_zempr_post_ids');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_zempr_location', '_zempr_condition', '_zempr_post_ids');

