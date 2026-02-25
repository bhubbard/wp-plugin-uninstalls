-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('intranet_restriction_data');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wd_restrict_intranet');
DELETE FROM wp_usermeta WHERE meta_key IN ('wd_restrict_intranet');
DELETE FROM wp_termmeta WHERE meta_key IN ('wd_restrict_intranet');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wd_restrict_intranet');

