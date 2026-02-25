-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('really_rich_results_global', 'really_rich_results_org_name', 'really_rich_results_org_url', 'really_rich_results_org_duns', 'really_rich_results_org_address', 'really_rich_results_org_same_as', 'really_rich_results_org_legal_name', 'really_rich_results_org_logo', 'really_rich_results_org_country', 'really_rich_results_org_locality', 'really_rich_results_org_region', 'really_rich_results_org_po_box', 'really_rich_results_org_postal_code', 'really_rich_results_org_street');
DELETE FROM wp_options WHERE option_name LIKE 'really_rich_results_post_type_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('really_rich_results_schema_type', 'really_rich_results_product');
DELETE FROM wp_usermeta WHERE meta_key IN ('really_rich_results_schema_type', 'really_rich_results_product');
DELETE FROM wp_termmeta WHERE meta_key IN ('really_rich_results_schema_type', 'really_rich_results_product');
DELETE FROM wp_commentmeta WHERE meta_key IN ('really_rich_results_schema_type', 'really_rich_results_product');

