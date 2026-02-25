-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('boxzilla_version', 'boxzilla_settings', 'boxzilla_rules', 'boxzilla_remote_extensions', 'boxzilla_request_failed');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('boxzilla_options');
DELETE FROM wp_usermeta WHERE meta_key IN ('boxzilla_options');
DELETE FROM wp_termmeta WHERE meta_key IN ('boxzilla_options');
DELETE FROM wp_commentmeta WHERE meta_key IN ('boxzilla_options');

