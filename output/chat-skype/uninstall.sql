-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('scs-opt');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('themeatelier_discount_dismissed');
DELETE FROM wp_usermeta WHERE meta_key IN ('themeatelier_discount_dismissed');
DELETE FROM wp_termmeta WHERE meta_key IN ('themeatelier_discount_dismissed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('themeatelier_discount_dismissed');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_scs_errors_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_scs_errors_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_scs_errors_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_scs_errors_%';

