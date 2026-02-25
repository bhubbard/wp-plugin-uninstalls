-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('promissa', 'active_sitewide_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('note', 'masses_ID', 'church_ID', 'date');
DELETE FROM wp_usermeta WHERE meta_key IN ('note', 'masses_ID', 'church_ID', 'date');
DELETE FROM wp_termmeta WHERE meta_key IN ('note', 'masses_ID', 'church_ID', 'date');
DELETE FROM wp_commentmeta WHERE meta_key IN ('note', 'masses_ID', 'church_ID', 'date');

