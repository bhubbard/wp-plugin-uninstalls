-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ns-sue-admin-notice-example');
DELETE FROM wp_options WHERE option_name LIKE 'pe-plugin-id-response-%';
DELETE FROM wp_options WHERE option_name LIKE 'plugineye_init%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ns_sue_status');
DELETE FROM wp_usermeta WHERE meta_key IN ('ns_sue_status');
DELETE FROM wp_termmeta WHERE meta_key IN ('ns_sue_status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ns_sue_status');

