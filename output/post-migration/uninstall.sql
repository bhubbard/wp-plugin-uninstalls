-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('start_cancel', 'itmar_post_needs_flush', 'itmar_permission_error', 'itmar_ogp_enabled', 'itmar_ogp_site_name', 'itmar_ogp_default_image', 'itmar_ogp_square_image', 'itmar_ogp_twitter_card');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('custom_revisions_count');
DELETE FROM wp_usermeta WHERE meta_key IN ('custom_revisions_count');
DELETE FROM wp_termmeta WHERE meta_key IN ('custom_revisions_count');
DELETE FROM wp_commentmeta WHERE meta_key IN ('custom_revisions_count');

