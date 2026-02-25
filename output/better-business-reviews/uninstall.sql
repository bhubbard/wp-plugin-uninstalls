-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('brtpmj_url', 'brtpmj_bu_displayname', 'brtpmj_bu_identifyingname', 'brtpmj_bu_numberofreviews', 'brtpmj_bu_score', 'brtpmj_bu_profileimageurl', 'brtpmj_bu_stars');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('rating', 'reviewDate', 'cName', 'cimage');
DELETE FROM wp_usermeta WHERE meta_key IN ('rating', 'reviewDate', 'cName', 'cimage');
DELETE FROM wp_termmeta WHERE meta_key IN ('rating', 'reviewDate', 'cName', 'cimage');
DELETE FROM wp_commentmeta WHERE meta_key IN ('rating', 'reviewDate', 'cName', 'cimage');

