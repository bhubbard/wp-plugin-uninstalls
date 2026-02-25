-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('juiz_SPS_settings');
DELETE FROM wp_options WHERE option_name LIKE '%-skin-shop-markup';
DELETE FROM wp_options WHERE option_name LIKE '%-changelog';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_jsps_metabox_hide_buttons', '_jsps_email_shares', '_jsps_counters');
DELETE FROM wp_usermeta WHERE meta_key IN ('_jsps_metabox_hide_buttons', '_jsps_email_shares', '_jsps_counters');
DELETE FROM wp_termmeta WHERE meta_key IN ('_jsps_metabox_hide_buttons', '_jsps_email_shares', '_jsps_counters');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_jsps_metabox_hide_buttons', '_jsps_email_shares', '_jsps_counters');

