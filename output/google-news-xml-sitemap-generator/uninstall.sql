-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('googlenewssitemap_tagkeywords', 'googlenewssitemap_includePages', 'googlenewssitemap_includePosts', 'googlenewssitemap_excludeCat', 'rss_language');

