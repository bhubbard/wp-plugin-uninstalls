-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bifh_last_import', 'bifh_last_cron_import');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_hubspot_url', '_hubspot_updated', '_hubspot_created', '_hubspot_import_date', '_hubspot_author', '_hubspot_featured_image_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('_hubspot_url', '_hubspot_updated', '_hubspot_created', '_hubspot_import_date', '_hubspot_author', '_hubspot_featured_image_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('_hubspot_url', '_hubspot_updated', '_hubspot_created', '_hubspot_import_date', '_hubspot_author', '_hubspot_featured_image_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_hubspot_url', '_hubspot_updated', '_hubspot_created', '_hubspot_import_date', '_hubspot_author', '_hubspot_featured_image_url');

