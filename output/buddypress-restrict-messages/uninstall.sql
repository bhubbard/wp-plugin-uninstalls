-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('etivite_bp_restrict_messages');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('etivite_bp_restrict_messages');
DELETE FROM wp_usermeta WHERE meta_key IN ('etivite_bp_restrict_messages');
DELETE FROM wp_termmeta WHERE meta_key IN ('etivite_bp_restrict_messages');
DELETE FROM wp_commentmeta WHERE meta_key IN ('etivite_bp_restrict_messages');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%capabilities';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%capabilities';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%capabilities';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%capabilities';

