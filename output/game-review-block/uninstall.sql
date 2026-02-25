-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('shortscore_transient_link');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_shortscore_game', '_shortscore_rating', '_shortscore_summary');
DELETE FROM wp_usermeta WHERE meta_key IN ('_shortscore_game', '_shortscore_rating', '_shortscore_summary');
DELETE FROM wp_termmeta WHERE meta_key IN ('_shortscore_game', '_shortscore_rating', '_shortscore_summary');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_shortscore_game', '_shortscore_rating', '_shortscore_summary');

