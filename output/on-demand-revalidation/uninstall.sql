-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('on_demand_revalidation_default_settings', 'on_demand_revalidation_post_update_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_old_permalink');
DELETE FROM wp_usermeta WHERE meta_key IN ('_old_permalink');
DELETE FROM wp_termmeta WHERE meta_key IN ('_old_permalink');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_old_permalink');

