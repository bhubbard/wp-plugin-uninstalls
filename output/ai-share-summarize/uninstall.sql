-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ayudawp_aiss_version', 'ayudawp_aiss_options', 'ayudawp_aiss_db_version', 'ayudawp_aiss_activation_notice_dismissed', 'ayudawp_aiss_vigia_tip_dismissed', 'ayudawp_aiss_just_activated');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_aioseo_noindex');
DELETE FROM wp_usermeta WHERE meta_key IN ('_aioseo_noindex');
DELETE FROM wp_termmeta WHERE meta_key IN ('_aioseo_noindex');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_aioseo_noindex');

