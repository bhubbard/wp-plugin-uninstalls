-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aiauto_settings', 'aiauto_limit', 'aiauto_db_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_aiauto_generated', '_aiauto_generated_date', '_aiauto_generation_method');
DELETE FROM wp_usermeta WHERE meta_key IN ('_aiauto_generated', '_aiauto_generated_date', '_aiauto_generation_method');
DELETE FROM wp_termmeta WHERE meta_key IN ('_aiauto_generated', '_aiauto_generated_date', '_aiauto_generation_method');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_aiauto_generated', '_aiauto_generated_date', '_aiauto_generation_method');

