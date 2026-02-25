-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jlwebcom_chatwsp_telefono', 'jlwebcom_chatwsp_mensaje');

