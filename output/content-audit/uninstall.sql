-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('content_audit');
DELETE FROM wp_options WHERE option_name LIKE '_audit_term_count_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_content_audit_owner', '_content_audit_notes', '_content_audit_expiration_date');
DELETE FROM wp_usermeta WHERE meta_key IN ('_content_audit_owner', '_content_audit_notes', '_content_audit_expiration_date');
DELETE FROM wp_termmeta WHERE meta_key IN ('_content_audit_owner', '_content_audit_notes', '_content_audit_expiration_date');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_content_audit_owner', '_content_audit_notes', '_content_audit_expiration_date');

