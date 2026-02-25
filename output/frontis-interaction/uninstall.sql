-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('frontis_interaction_do_activation_redirect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_interactionEditorTimestamp');
DELETE FROM wp_usermeta WHERE meta_key IN ('_interactionEditorTimestamp');
DELETE FROM wp_termmeta WHERE meta_key IN ('_interactionEditorTimestamp');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_interactionEditorTimestamp');

