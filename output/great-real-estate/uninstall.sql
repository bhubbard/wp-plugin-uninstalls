-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('greatrealestate_pageforlistings', 'wpurl', 'greatrealestate_listfeedtitle', 'greatrealestate_listfeeddesc', 'greatrealestate_mls', 'greatrealestate_agent', 'greatrealestate_broker', 'greatrealestate_agentphone', 'greatrealestate_maxfeatured', 'greatrealestate_usecss', 'greatrealestate_nobrand', 'greatrealestate_db_version', 'gre-manual-update-pending', 'gre-2-migration', 'download_path', 'ngg_options', 'download_categories', 'widget_grefeatured');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_gre[property-type]', '_gre[downloads]', '_gre[google-maps][geolocation]');
DELETE FROM wp_usermeta WHERE meta_key IN ('_gre[property-type]', '_gre[downloads]', '_gre[google-maps][geolocation]');
DELETE FROM wp_termmeta WHERE meta_key IN ('_gre[property-type]', '_gre[downloads]', '_gre[google-maps][geolocation]');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_gre[property-type]', '_gre[downloads]', '_gre[google-maps][geolocation]');

