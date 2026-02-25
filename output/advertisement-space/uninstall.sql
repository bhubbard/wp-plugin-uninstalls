-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('advertisement_advertisement-img', 'advertisement_enable-advertisement', 'advertisement_end-date', 'advertisement_total_view', 'advertisement_total_click', 'advertisment_advertisement_type', 'advertisement_advertisements-url');
DELETE FROM wp_usermeta WHERE meta_key IN ('advertisement_advertisement-img', 'advertisement_enable-advertisement', 'advertisement_end-date', 'advertisement_total_view', 'advertisement_total_click', 'advertisment_advertisement_type', 'advertisement_advertisements-url');
DELETE FROM wp_termmeta WHERE meta_key IN ('advertisement_advertisement-img', 'advertisement_enable-advertisement', 'advertisement_end-date', 'advertisement_total_view', 'advertisement_total_click', 'advertisment_advertisement_type', 'advertisement_advertisements-url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('advertisement_advertisement-img', 'advertisement_enable-advertisement', 'advertisement_end-date', 'advertisement_total_view', 'advertisement_total_click', 'advertisment_advertisement_type', 'advertisement_advertisements-url');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'advertisement_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'advertisement_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'advertisement_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'advertisement_%';

