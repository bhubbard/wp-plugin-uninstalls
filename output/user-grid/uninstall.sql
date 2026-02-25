-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('usgr_ug_time', 'usgr_ug_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('description', '_usgr_block_css', '_usgr_block_active', 'usgr_phone', 'usgr_designation', 'usgr_job_role', 'usgr_custom_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('description', '_usgr_block_css', '_usgr_block_active', 'usgr_phone', 'usgr_designation', 'usgr_job_role', 'usgr_custom_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('description', '_usgr_block_css', '_usgr_block_active', 'usgr_phone', 'usgr_designation', 'usgr_job_role', 'usgr_custom_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('description', '_usgr_block_css', '_usgr_block_active', 'usgr_phone', 'usgr_designation', 'usgr_job_role', 'usgr_custom_url');

