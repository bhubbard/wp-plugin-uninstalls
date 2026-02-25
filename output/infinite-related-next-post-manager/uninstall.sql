-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_next_post_activation_code', '_winpm_next_post_option');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('svc_next_disable', 'svc_related_by', '_thumbnail_id', 'svc_next_exclude');
DELETE FROM wp_usermeta WHERE meta_key IN ('svc_next_disable', 'svc_related_by', '_thumbnail_id', 'svc_next_exclude');
DELETE FROM wp_termmeta WHERE meta_key IN ('svc_next_disable', 'svc_related_by', '_thumbnail_id', 'svc_next_exclude');
DELETE FROM wp_commentmeta WHERE meta_key IN ('svc_next_disable', 'svc_related_by', '_thumbnail_id', 'svc_next_exclude');

