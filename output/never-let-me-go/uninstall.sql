-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_option';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('nlmg_leave_date');
DELETE FROM wp_usermeta WHERE meta_key IN ('nlmg_leave_date');
DELETE FROM wp_termmeta WHERE meta_key IN ('nlmg_leave_date');
DELETE FROM wp_commentmeta WHERE meta_key IN ('nlmg_leave_date');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%capabilities';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%capabilities';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%capabilities';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%capabilities';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%user_level';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%user_level';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%user_level';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%user_level';

