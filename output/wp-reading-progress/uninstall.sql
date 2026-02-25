-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ruigehond006', 'ruigehond006_upgraded_1.2.4');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ruigehond006_show');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ruigehond006_show');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ruigehond006_show');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ruigehond006_show');

