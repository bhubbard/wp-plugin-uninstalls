-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('a_verifications', 'a_trust_ids', 'trustswiftly_verification');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_trust_data', '_trust_user_id', '_trust_embed_user_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_trust_data', '_trust_user_id', '_trust_embed_user_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_trust_data', '_trust_user_id', '_trust_embed_user_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_trust_data', '_trust_user_id', '_trust_embed_user_id');

