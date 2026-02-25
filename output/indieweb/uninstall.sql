-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('iw_single_author', 'iw_default_author', 'iw_author_url', 'iw_relme_bw', 'indieweb_mastodon');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('first_name', 'relme', 'mastodon');
DELETE FROM wp_usermeta WHERE meta_key IN ('first_name', 'relme', 'mastodon');
DELETE FROM wp_termmeta WHERE meta_key IN ('first_name', 'relme', 'mastodon');
DELETE FROM wp_commentmeta WHERE meta_key IN ('first_name', 'relme', 'mastodon');

