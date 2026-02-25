-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('fspw_flash_sale', 'fspw_flash_sold');
DELETE FROM wp_usermeta WHERE meta_key IN ('fspw_flash_sale', 'fspw_flash_sold');
DELETE FROM wp_termmeta WHERE meta_key IN ('fspw_flash_sale', 'fspw_flash_sold');
DELETE FROM wp_commentmeta WHERE meta_key IN ('fspw_flash_sale', 'fspw_flash_sold');

