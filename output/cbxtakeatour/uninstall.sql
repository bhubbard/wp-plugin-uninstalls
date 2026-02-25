-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cbxtakeatour_version', 'cbxtakeatour_activated_notice', 'cbxtakeatour_upgraded_notice');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_cbxtourmeta');
DELETE FROM wp_usermeta WHERE meta_key IN ('_cbxtourmeta');
DELETE FROM wp_termmeta WHERE meta_key IN ('_cbxtourmeta');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_cbxtourmeta');

