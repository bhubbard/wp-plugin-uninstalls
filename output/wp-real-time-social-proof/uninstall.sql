-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpsppro_ga_profile', 'wprtsp_upgrade_required', 'wprtsp_firstrun', 'wprtsp', 'wpsppro_ga_rtusers');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_socialproof');
DELETE FROM wp_usermeta WHERE meta_key IN ('_socialproof');
DELETE FROM wp_termmeta WHERE meta_key IN ('_socialproof');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_socialproof');

