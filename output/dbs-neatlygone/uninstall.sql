-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('NeatlyGoneWhatToHide', 'DBSfuncy');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_DBS_NG_REDIRECT_', '_DBS_NG_HOW_', '_DBS_NG_TO_');
DELETE FROM wp_usermeta WHERE meta_key IN ('_DBS_NG_REDIRECT_', '_DBS_NG_HOW_', '_DBS_NG_TO_');
DELETE FROM wp_termmeta WHERE meta_key IN ('_DBS_NG_REDIRECT_', '_DBS_NG_HOW_', '_DBS_NG_TO_');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_DBS_NG_REDIRECT_', '_DBS_NG_HOW_', '_DBS_NG_TO_');

