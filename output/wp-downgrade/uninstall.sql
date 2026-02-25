-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpdg_specific_version_name', 'wpdg_download_url', 'wpdg_edit_download_url');

