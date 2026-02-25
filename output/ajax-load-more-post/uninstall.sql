-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('richpostslistandgrid_license_status', 'richpostslistandgrid_license_key', 'richpostslistandgrid_license_reff');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ik_rplg_review', 'vcode');
DELETE FROM wp_usermeta WHERE meta_key IN ('ik_rplg_review', 'vcode');
DELETE FROM wp_termmeta WHERE meta_key IN ('ik_rplg_review', 'vcode');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ik_rplg_review', 'vcode');

