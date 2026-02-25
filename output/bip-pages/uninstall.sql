-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bip_pages_main_page_id', 'bip_pages_instruction_id', 'Activated_Plugin', 'widget_bip-logo', 'sidebars_widgets', 'bip_pages_org_name', 'bip_pages_address', 'bip_pages_editor', 'bip_pages_email', 'bip_pages_phone', 'bip-pages-edit-access-role', 'bip-pages-publish-access-role', 'bip-pages-delete-access-role', 'bip-pages-activation-msg', 'bip-pages-deactivation-msg');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_bip_prepared_by');
DELETE FROM wp_usermeta WHERE meta_key IN ('_bip_prepared_by');
DELETE FROM wp_termmeta WHERE meta_key IN ('_bip_prepared_by');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_bip_prepared_by');

