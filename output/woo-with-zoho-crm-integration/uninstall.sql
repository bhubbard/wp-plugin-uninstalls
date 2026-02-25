-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpzohocrm_status', 'wpzohocrm_auth_key', 'sync_number');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('LEADID', 'CONTACTID');
DELETE FROM wp_usermeta WHERE meta_key IN ('LEADID', 'CONTACTID');
DELETE FROM wp_termmeta WHERE meta_key IN ('LEADID', 'CONTACTID');
DELETE FROM wp_commentmeta WHERE meta_key IN ('LEADID', 'CONTACTID');

