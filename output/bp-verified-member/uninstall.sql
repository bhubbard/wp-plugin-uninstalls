-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bp_verified_member_new_requests');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('bp_verified_member_verification_request');
DELETE FROM wp_usermeta WHERE meta_key IN ('bp_verified_member_verification_request');
DELETE FROM wp_termmeta WHERE meta_key IN ('bp_verified_member_verification_request');
DELETE FROM wp_commentmeta WHERE meta_key IN ('bp_verified_member_verification_request');

