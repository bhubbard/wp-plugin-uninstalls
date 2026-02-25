-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('getlead_page-api', 'getlead_page-widget', 'getlead_page-type');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('getlead_page-disable', 'getlead_page-widget');
DELETE FROM wp_usermeta WHERE meta_key IN ('getlead_page-disable', 'getlead_page-widget');
DELETE FROM wp_termmeta WHERE meta_key IN ('getlead_page-disable', 'getlead_page-widget');
DELETE FROM wp_commentmeta WHERE meta_key IN ('getlead_page-disable', 'getlead_page-widget');

