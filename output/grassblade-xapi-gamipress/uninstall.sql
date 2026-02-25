-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('grassblade_tincan_endpoint', 'grassblade_free_addons', 'grassblade_addons', 'grassblade_gamipress');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('xapi_content', '_gamipress_gb_percentage', '_gamipress_gb_min_percentage', '_gamipress_gb_max_percentage');
DELETE FROM wp_usermeta WHERE meta_key IN ('xapi_content', '_gamipress_gb_percentage', '_gamipress_gb_min_percentage', '_gamipress_gb_max_percentage');
DELETE FROM wp_termmeta WHERE meta_key IN ('xapi_content', '_gamipress_gb_percentage', '_gamipress_gb_min_percentage', '_gamipress_gb_max_percentage');
DELETE FROM wp_commentmeta WHERE meta_key IN ('xapi_content', '_gamipress_gb_percentage', '_gamipress_gb_min_percentage', '_gamipress_gb_max_percentage');

