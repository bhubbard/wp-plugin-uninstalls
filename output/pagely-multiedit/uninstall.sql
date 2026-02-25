-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pagely_multiedit_shortcodes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE 'multiedit_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'multiedit_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'multiedit_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'multiedit_%';

