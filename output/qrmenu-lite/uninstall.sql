-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('qrlite-main-settings', 'qrlite_dismiss_notice_key', 'qrlite_install');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('qrlite_configuration', 'qrlite_dismiss_notice_key', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('qrlite_configuration', 'qrlite_dismiss_notice_key', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('qrlite_configuration', 'qrlite_dismiss_notice_key', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('qrlite_configuration', 'qrlite_dismiss_notice_key', '_wp_page_template');

