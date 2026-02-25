-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('c2g_wcc_crm2go_api_url', 'c2g_wcc_crm2go_api_token', 'c2g_wcc_crm2go_email', 'c2g_wcc_crm2go_slang', 'c2g_wcc_crm2go_usuario', 'c2g_wcc_crm2go_nombreCompleto', 'c2g_wcc_add_contacts', 'c2g_wcc_update_contacts', 'c2g_wcc_contacts_lead_source', 'c2g_wcc_add_order_details', 'c2g_wcc_add_order_notify');

