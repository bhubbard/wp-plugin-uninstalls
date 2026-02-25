-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cit_introtext', 'cit_outrotext', 'cit_targetblank', 'cit_sortorder');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('citation');
DELETE FROM wp_usermeta WHERE meta_key IN ('citation');
DELETE FROM wp_termmeta WHERE meta_key IN ('citation');
DELETE FROM wp_commentmeta WHERE meta_key IN ('citation');

