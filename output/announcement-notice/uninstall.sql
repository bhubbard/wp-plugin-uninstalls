-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wacm_install_date', 'wacm_install_data');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('announcement_notice_enable');
DELETE FROM wp_usermeta WHERE meta_key IN ('announcement_notice_enable');
DELETE FROM wp_termmeta WHERE meta_key IN ('announcement_notice_enable');
DELETE FROM wp_commentmeta WHERE meta_key IN ('announcement_notice_enable');

