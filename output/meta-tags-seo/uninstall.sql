-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mtg_enabled', 'mtg_default_og_type', 'mtg_default_twitter_card');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_mtg_meta_description', '_mtg_meta_image', '_mtg_meta_ogtype', '_mtg_meta_twitter_card');
DELETE FROM wp_usermeta WHERE meta_key IN ('_mtg_meta_description', '_mtg_meta_image', '_mtg_meta_ogtype', '_mtg_meta_twitter_card');
DELETE FROM wp_termmeta WHERE meta_key IN ('_mtg_meta_description', '_mtg_meta_image', '_mtg_meta_ogtype', '_mtg_meta_twitter_card');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_mtg_meta_description', '_mtg_meta_image', '_mtg_meta_ogtype', '_mtg_meta_twitter_card');

