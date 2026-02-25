-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('JDL_login', 'JDL_idr', 'JDL_idl', 'JDL_pass', 'JDL_email');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('idr');
DELETE FROM wp_usermeta WHERE meta_key IN ('idr');
DELETE FROM wp_termmeta WHERE meta_key IN ('idr');
DELETE FROM wp_commentmeta WHERE meta_key IN ('idr');

