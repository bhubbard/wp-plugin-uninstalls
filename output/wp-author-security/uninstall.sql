-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpas_db_version', 'protectAuthor', 'protectAuthorName', 'disableLoggedIn', 'disableRestUser', 'customLoginError', 'wpas_filterFeed', 'wpas_filterEmbed', 'wpas_filterAuthorSitemap');

