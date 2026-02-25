-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ULTIMATE_CSV_IMP_VERSION', 'smack_image_options', 'total_attachment_ids', 'failed_attachment_ids', 'sm_uci_pro_settings', 'wc_attribute_taxonomies');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sku', 'sendPassword', '_download_type', '_alg_ean', 'jet_abaf_service_cost', 'jet_abaf_service_cost_format', 'jet_abaf_guests_multiplier', 'jet_abaf_everyday_service');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sku', 'sendPassword', '_download_type', '_alg_ean', 'jet_abaf_service_cost', 'jet_abaf_service_cost_format', 'jet_abaf_guests_multiplier', 'jet_abaf_everyday_service');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sku', 'sendPassword', '_download_type', '_alg_ean', 'jet_abaf_service_cost', 'jet_abaf_service_cost_format', 'jet_abaf_guests_multiplier', 'jet_abaf_everyday_service');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sku', 'sendPassword', '_download_type', '_alg_ean', 'jet_abaf_service_cost', 'jet_abaf_service_cost_format', 'jet_abaf_guests_multiplier', 'jet_abaf_everyday_service');

