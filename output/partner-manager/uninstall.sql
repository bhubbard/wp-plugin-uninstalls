-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('partner_information_website', 'partner_information_description');
DELETE FROM wp_usermeta WHERE meta_key IN ('partner_information_website', 'partner_information_description');
DELETE FROM wp_termmeta WHERE meta_key IN ('partner_information_website', 'partner_information_description');
DELETE FROM wp_commentmeta WHERE meta_key IN ('partner_information_website', 'partner_information_description');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'partner_information_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'partner_information_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'partner_information_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'partner_information_%';

