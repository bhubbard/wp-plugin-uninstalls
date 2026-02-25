-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fapiMemberApiEmail', 'fapiMemberApiKey', 'fapi_member_post_types');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('fapi_pages', 'fapi_user_memberships');
DELETE FROM wp_usermeta WHERE meta_key IN ('fapi_pages', 'fapi_user_memberships');
DELETE FROM wp_termmeta WHERE meta_key IN ('fapi_pages', 'fapi_user_memberships');
DELETE FROM wp_commentmeta WHERE meta_key IN ('fapi_pages', 'fapi_user_memberships');

