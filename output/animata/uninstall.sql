-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_anilist_banner', '_anilist_poster', '_anilist_description', '_anilist_status', '_anilist_score', '_anilist_release_date', '_animata_fetch_data_executed', '_banner_sideloaded', '_animata_secondary_featured_image');
DELETE FROM wp_usermeta WHERE meta_key IN ('_anilist_banner', '_anilist_poster', '_anilist_description', '_anilist_status', '_anilist_score', '_anilist_release_date', '_animata_fetch_data_executed', '_banner_sideloaded', '_animata_secondary_featured_image');
DELETE FROM wp_termmeta WHERE meta_key IN ('_anilist_banner', '_anilist_poster', '_anilist_description', '_anilist_status', '_anilist_score', '_anilist_release_date', '_animata_fetch_data_executed', '_banner_sideloaded', '_animata_secondary_featured_image');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_anilist_banner', '_anilist_poster', '_anilist_description', '_anilist_status', '_anilist_score', '_anilist_release_date', '_animata_fetch_data_executed', '_banner_sideloaded', '_animata_secondary_featured_image');

