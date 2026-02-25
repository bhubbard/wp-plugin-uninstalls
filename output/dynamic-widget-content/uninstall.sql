-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vp_fontawesome_icons');
DELETE FROM wp_options WHERE option_name LIKE '%_version';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_bv_birthday_giveaway_2016', 'dwc-title', 'dwc-content', 'dwc-title-2', 'dwc-content-2', 'dwc-title-3', 'dwc-content-3', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_bv_birthday_giveaway_2016', 'dwc-title', 'dwc-content', 'dwc-title-2', 'dwc-content-2', 'dwc-title-3', 'dwc-content-3', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_bv_birthday_giveaway_2016', 'dwc-title', 'dwc-content', 'dwc-title-2', 'dwc-content-2', 'dwc-title-3', 'dwc-content-3', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_bv_birthday_giveaway_2016', 'dwc-title', 'dwc-content', 'dwc-title-2', 'dwc-content-2', 'dwc-title-3', 'dwc-content-3', '_wp_page_template');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'dwc-title%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'dwc-title%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'dwc-title%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'dwc-title%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'dwc-content%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'dwc-content%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'dwc-content%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'dwc-content%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_fields';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_fields';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_fields';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_fields';

