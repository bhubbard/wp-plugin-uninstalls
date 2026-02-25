-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%-admin-groups';
DELETE FROM wp_options WHERE option_name LIKE '%db_version';
DELETE FROM wp_options WHERE option_name LIKE '%-holiday-ics';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ownerRole', 'resourcemanager_resource_owner_mail');
DELETE FROM wp_usermeta WHERE meta_key IN ('ownerRole', 'resourcemanager_resource_owner_mail');
DELETE FROM wp_termmeta WHERE meta_key IN ('ownerRole', 'resourcemanager_resource_owner_mail');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ownerRole', 'resourcemanager_resource_owner_mail');

