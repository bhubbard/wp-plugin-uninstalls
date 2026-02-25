-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_z8n-fs-disable-title-menu', '_z8n-fs-disable-title-detail', '_z8n-fs-disable-title-category', '_z8n-fs-disable-title-archive', '_z8n-fs-disable-title-home', '_z8n-fs-disable-title-widget');
DELETE FROM wp_usermeta WHERE meta_key IN ('_z8n-fs-disable-title-menu', '_z8n-fs-disable-title-detail', '_z8n-fs-disable-title-category', '_z8n-fs-disable-title-archive', '_z8n-fs-disable-title-home', '_z8n-fs-disable-title-widget');
DELETE FROM wp_termmeta WHERE meta_key IN ('_z8n-fs-disable-title-menu', '_z8n-fs-disable-title-detail', '_z8n-fs-disable-title-category', '_z8n-fs-disable-title-archive', '_z8n-fs-disable-title-home', '_z8n-fs-disable-title-widget');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_z8n-fs-disable-title-menu', '_z8n-fs-disable-title-detail', '_z8n-fs-disable-title-category', '_z8n-fs-disable-title-archive', '_z8n-fs-disable-title-home', '_z8n-fs-disable-title-widget');

