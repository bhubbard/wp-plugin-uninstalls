-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('notice_dissmissed', 'awe_save_settings', 'active_sitewide_plugins', 'ad_gravity_form_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('color');
DELETE FROM wp_usermeta WHERE meta_key IN ('color');
DELETE FROM wp_termmeta WHERE meta_key IN ('color');
DELETE FROM wp_commentmeta WHERE meta_key IN ('color');

