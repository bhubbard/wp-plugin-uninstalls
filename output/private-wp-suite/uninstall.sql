-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('plrpws_protect_blog', 'plrpws_protect_feeds', 'plrpws_protect_uploads', 'plrpws_exceptions');

