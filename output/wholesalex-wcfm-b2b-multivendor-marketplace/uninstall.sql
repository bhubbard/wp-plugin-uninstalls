-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'wcfmvm_registration_static_fields');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wholesalex_conversation_vid', '__wholesalex_registration_role');
DELETE FROM wp_usermeta WHERE meta_key IN ('wholesalex_conversation_vid', '__wholesalex_registration_role');
DELETE FROM wp_termmeta WHERE meta_key IN ('wholesalex_conversation_vid', '__wholesalex_registration_role');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wholesalex_conversation_vid', '__wholesalex_registration_role');

