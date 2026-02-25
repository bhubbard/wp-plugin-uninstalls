-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('kk_postoption_ff', 'kk_message_ff');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ff_rolekadmin', 'ff_role_alowk');
DELETE FROM wp_usermeta WHERE meta_key IN ('ff_rolekadmin', 'ff_role_alowk');
DELETE FROM wp_termmeta WHERE meta_key IN ('ff_rolekadmin', 'ff_role_alowk');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ff_rolekadmin', 'ff_role_alowk');

