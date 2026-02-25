-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('atc-enable-status', 'atc-expire-date', 'atc-expire-days', 'atc-enable-method', 'atc-protect-level');
DELETE FROM wp_usermeta WHERE meta_key IN ('atc-enable-status', 'atc-expire-date', 'atc-expire-days', 'atc-enable-method', 'atc-protect-level');
DELETE FROM wp_termmeta WHERE meta_key IN ('atc-enable-status', 'atc-expire-date', 'atc-expire-days', 'atc-enable-method', 'atc-protect-level');
DELETE FROM wp_commentmeta WHERE meta_key IN ('atc-enable-status', 'atc-expire-date', 'atc-expire-days', 'atc-enable-method', 'atc-protect-level');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'atc-enable-method%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'atc-enable-method%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'atc-enable-method%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'atc-enable-method%';

