-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_cf7hsfi_enabled', '_cf7hsfi_portal_id', '_cf7hsfi_form_id', '_cf7hsfi_form_page_url', '_cf7hsfi_form_page_name', '_cf7hsfi_form_fields', '_cf7hsfi_debug_log');
DELETE FROM wp_usermeta WHERE meta_key IN ('_cf7hsfi_enabled', '_cf7hsfi_portal_id', '_cf7hsfi_form_id', '_cf7hsfi_form_page_url', '_cf7hsfi_form_page_name', '_cf7hsfi_form_fields', '_cf7hsfi_debug_log');
DELETE FROM wp_termmeta WHERE meta_key IN ('_cf7hsfi_enabled', '_cf7hsfi_portal_id', '_cf7hsfi_form_id', '_cf7hsfi_form_page_url', '_cf7hsfi_form_page_name', '_cf7hsfi_form_fields', '_cf7hsfi_debug_log');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_cf7hsfi_enabled', '_cf7hsfi_portal_id', '_cf7hsfi_form_id', '_cf7hsfi_form_page_url', '_cf7hsfi_form_page_name', '_cf7hsfi_form_fields', '_cf7hsfi_debug_log');

