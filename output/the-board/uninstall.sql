-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('tb_photo', 'tb_lastname', 'tb_firstname', 'tb_hierarchy');
DELETE FROM wp_usermeta WHERE meta_key IN ('tb_photo', 'tb_lastname', 'tb_firstname', 'tb_hierarchy');
DELETE FROM wp_termmeta WHERE meta_key IN ('tb_photo', 'tb_lastname', 'tb_firstname', 'tb_hierarchy');
DELETE FROM wp_commentmeta WHERE meta_key IN ('tb_photo', 'tb_lastname', 'tb_firstname', 'tb_hierarchy');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'hideit_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'hideit_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'hideit_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'hideit_%';

