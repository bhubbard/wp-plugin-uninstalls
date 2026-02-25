-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('osppfw_status_enable', 'osppfw_date_format', 'osppfw_stdis_format', 'osppfw_statuses');
DELETE FROM wp_options WHERE option_name LIKE '%OSPPFWerror';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('item_status', 'item_status_date');
DELETE FROM wp_usermeta WHERE meta_key IN ('item_status', 'item_status_date');
DELETE FROM wp_termmeta WHERE meta_key IN ('item_status', 'item_status_date');
DELETE FROM wp_commentmeta WHERE meta_key IN ('item_status', 'item_status_date');

