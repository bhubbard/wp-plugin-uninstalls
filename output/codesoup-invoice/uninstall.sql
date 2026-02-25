-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('csip_permalinks_flushed', 'csip_company_nin', '_csip_company_nin', 'carbon_custom_sidebars', 'csip_countries', 'csip_currencies');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_inv_number', '_inv_client', '_cli_net_period', '_csip_company_account_details', '_csip_company_account_details_other', '_wp_page_template', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_inv_number', '_inv_client', '_cli_net_period', '_csip_company_account_details', '_csip_company_account_details_other', '_wp_page_template', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_inv_number', '_inv_client', '_cli_net_period', '_csip_company_account_details', '_csip_company_account_details_other', '_wp_page_template', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_inv_number', '_inv_client', '_cli_net_period', '_csip_company_account_details', '_csip_company_account_details_other', '_wp_page_template', '_wp_attachment_image_alt');

