-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%-yesno';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%-yesno';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%-yesno';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-yesno';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%-role';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%-role';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%-role';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-role';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%-ssl-yesno';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%-ssl-yesno';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%-ssl-yesno';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-ssl-yesno';

