-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('convbst_er_settings', 'convbst_er_health');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_convbst_er_disable');
DELETE FROM wp_usermeta WHERE meta_key IN ('_convbst_er_disable');
DELETE FROM wp_termmeta WHERE meta_key IN ('_convbst_er_disable');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_convbst_er_disable');

