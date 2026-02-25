-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('promo_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('from', 'urllink', 'ptype', 'redURL', 'conURL', 'conNAME', 'conTNAME', 'conUSER', 'conPASSWORD', 'conQSTRING', 'queV1', 'queV2', 'queV3');
DELETE FROM wp_usermeta WHERE meta_key IN ('from', 'urllink', 'ptype', 'redURL', 'conURL', 'conNAME', 'conTNAME', 'conUSER', 'conPASSWORD', 'conQSTRING', 'queV1', 'queV2', 'queV3');
DELETE FROM wp_termmeta WHERE meta_key IN ('from', 'urllink', 'ptype', 'redURL', 'conURL', 'conNAME', 'conTNAME', 'conUSER', 'conPASSWORD', 'conQSTRING', 'queV1', 'queV2', 'queV3');
DELETE FROM wp_commentmeta WHERE meta_key IN ('from', 'urllink', 'ptype', 'redURL', 'conURL', 'conNAME', 'conTNAME', 'conUSER', 'conPASSWORD', 'conQSTRING', 'queV1', 'queV2', 'queV3');

