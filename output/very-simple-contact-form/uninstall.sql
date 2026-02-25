-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vscf-setting-1', 'vscf-setting-22', 'vscf-setting-28', 'vscf-setting-3', 'vscf-setting-35', 'vscf-setting-15', 'vscf-setting-2', 'vscf-setting-27', 'vscf-setting-32', 'vscf-setting-33', 'vscf-setting-19', 'vscf-setting-21', 'vscf-setting-34', 'vscf-setting-29', 'vscf-setting-30', 'vscf-setting-25', 'vscf-setting-38', 'vscf-setting-36', 'vscf-setting-39', 'vscf-setting-40', 'vscf-setting-23', 'vscf-setting-24', 'vscf-setting-4', 'vscf-setting-5', 'vscf-setting-6', 'vscf-setting-7', 'vscf-setting-9', 'vscf-setting-18', 'vscf-setting-10', 'vscf-setting-11', 'vscf-setting-13', 'vscf-setting-20', 'vscf-setting-26', 'vscf-setting-12', 'vscf-setting-8', 'vscf-setting-37', 'vscf-setting-31', 'vscf-setting-14', 'vscf-setting-16', 'vscf-setting-17');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('name_sub', 'email_sub');
DELETE FROM wp_usermeta WHERE meta_key IN ('name_sub', 'email_sub');
DELETE FROM wp_termmeta WHERE meta_key IN ('name_sub', 'email_sub');
DELETE FROM wp_commentmeta WHERE meta_key IN ('name_sub', 'email_sub');

