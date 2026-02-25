-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wsm_ignore_product_ids', 'active_sitewide_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wsm_status', '_wsm_discount', '_wsm_start', '_wsm_end', '_wsm_filters');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wsm_status', '_wsm_discount', '_wsm_start', '_wsm_end', '_wsm_filters');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wsm_status', '_wsm_discount', '_wsm_start', '_wsm_end', '_wsm_filters');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wsm_status', '_wsm_discount', '_wsm_start', '_wsm_end', '_wsm_filters');

