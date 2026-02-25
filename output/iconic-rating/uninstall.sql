-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('iconicr_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('iconicr_avg', 'iconicr_votes', 'iconicr_star_v');
DELETE FROM wp_usermeta WHERE meta_key IN ('iconicr_avg', 'iconicr_votes', 'iconicr_star_v');
DELETE FROM wp_termmeta WHERE meta_key IN ('iconicr_avg', 'iconicr_votes', 'iconicr_star_v');
DELETE FROM wp_commentmeta WHERE meta_key IN ('iconicr_avg', 'iconicr_votes', 'iconicr_star_v');

