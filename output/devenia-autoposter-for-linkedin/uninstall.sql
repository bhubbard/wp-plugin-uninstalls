-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dlap_settings', 'dlap_access_token', 'dlap_token_expires', 'dlap_linkedin_api_version', 'dlap_last_expiry_email', 'dlap_organizations', 'dlap_gallery_rotation_index', 'dlap_member_id', 'dlap_test_error', 'dlap_last_error');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_dlap_disable', '_dlap_shared', '_dlap_share_queued', '_dlap_error', '_dlap_share_attempt', '_dlap_post_id', '_dlap_error_personal', '_dlap_error_organization');
DELETE FROM wp_usermeta WHERE meta_key IN ('_dlap_disable', '_dlap_shared', '_dlap_share_queued', '_dlap_error', '_dlap_share_attempt', '_dlap_post_id', '_dlap_error_personal', '_dlap_error_organization');
DELETE FROM wp_termmeta WHERE meta_key IN ('_dlap_disable', '_dlap_shared', '_dlap_share_queued', '_dlap_error', '_dlap_share_attempt', '_dlap_post_id', '_dlap_error_personal', '_dlap_error_organization');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_dlap_disable', '_dlap_shared', '_dlap_share_queued', '_dlap_error', '_dlap_share_attempt', '_dlap_post_id', '_dlap_error_personal', '_dlap_error_organization');

