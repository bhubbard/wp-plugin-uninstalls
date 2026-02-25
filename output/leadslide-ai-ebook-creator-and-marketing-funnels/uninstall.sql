-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('leadslide_options', 'leadslide_admin_notice');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('campaign_id', 'publish_api_key');
DELETE FROM wp_usermeta WHERE meta_key IN ('campaign_id', 'publish_api_key');
DELETE FROM wp_termmeta WHERE meta_key IN ('campaign_id', 'publish_api_key');
DELETE FROM wp_commentmeta WHERE meta_key IN ('campaign_id', 'publish_api_key');

