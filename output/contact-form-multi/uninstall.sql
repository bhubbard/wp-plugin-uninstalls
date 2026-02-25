-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bstwbsftwppdtplgns_options', 'recently_activated', 'active_sitewide_plugins', 'cntctfrmmlt_options_main', 'cntctfrmmlt_options', 'update_plugins', 'bws_plugins_update');
DELETE FROM wp_options WHERE option_name LIKE '%_options';
DELETE FROM wp_options WHERE option_name LIKE 'cntctfrmmlt_options_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_bws_affiliate_postbox_dismissed', 'dismissed_wp_pointers');
DELETE FROM wp_usermeta WHERE meta_key IN ('_bws_affiliate_postbox_dismissed', 'dismissed_wp_pointers');
DELETE FROM wp_termmeta WHERE meta_key IN ('_bws_affiliate_postbox_dismissed', 'dismissed_wp_pointers');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_bws_affiliate_postbox_dismissed', 'dismissed_wp_pointers');

