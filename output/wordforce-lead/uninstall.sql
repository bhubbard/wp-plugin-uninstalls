-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wdfl-setting-78', 'wdfl-setting-57', 'wdfl-setting-63', 'wdfl-setting-59', 'wdfl-setting-61', 'wdfl-setting-62', 'wdfl-setting-a', 'wdfl-setting-b', 'wdfl-setting-c', 'wdfl-setting-d', 'wdfl-setting-e', 'wdfl-setting-f', 'wdfl-setting-56', 'wdfl-setting-58', 'wdfl-setting-6', 'wdfl-setting-60', 'wdfl-setting-9', 'wdfl-setting-10', 'wdfl-setting-72', 'wdfl-setting-74', 'wdfl-setting-73', 'wdfl-setting-68', 'wdfl-setting-69', 'wdfl-setting-70', 'wdfl-setting-71', 'wdfl-setting-82', 'wdfl-setting-81', 'wdfl-setting-77', 'wdfl-setting-101', 'wdfl-setting-75', 'wdfl-setting-76', 'wdfl-setting-120', 'wdfl-setting-15', 'wdfl-setting-16', 'wdfl-setting-121', 'wdfl-setting-22', 'wdfl-setting-102', 'wdfl-setting-2', 'wdfl-setting-11', 'wdfl-setting-13', 'wdfl-setting-20', 'wdfl-setting-14', 'wdfl-setting-26', 'wdfl-setting-12', 'sales-setting-22', 'wdfl-setting-55', 'wdfl-setting-65', 'wdfl-setting-23', 'wdfl-setting-24', 'wdfl-setting-3');
DELETE FROM wp_options WHERE option_name IN ('wdfl-setting-4', 'wdfl-setting-19', 'wdfl-setting-21');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('name_sub', 'email_sub');
DELETE FROM wp_usermeta WHERE meta_key IN ('name_sub', 'email_sub');
DELETE FROM wp_termmeta WHERE meta_key IN ('name_sub', 'email_sub');
DELETE FROM wp_commentmeta WHERE meta_key IN ('name_sub', 'email_sub');

