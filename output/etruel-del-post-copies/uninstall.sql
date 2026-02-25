-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpedpc_version', 'wpedpc_version_upgraded_from', 'wpedpc_notices', 'wpedpc_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('logs', 'active', 'excluded_posts', 'wpedpc_limit', 'movetotrash', 'deletemedia', 'delimgcontent', 'period', 'schedule', 'minmax', 'titledel', 'contentdel', 'cpostypes', 'cposstatuses', 'excluded_ids', 'allcat', 'categories', 'doingcron');
DELETE FROM wp_usermeta WHERE meta_key IN ('logs', 'active', 'excluded_posts', 'wpedpc_limit', 'movetotrash', 'deletemedia', 'delimgcontent', 'period', 'schedule', 'minmax', 'titledel', 'contentdel', 'cpostypes', 'cposstatuses', 'excluded_ids', 'allcat', 'categories', 'doingcron');
DELETE FROM wp_termmeta WHERE meta_key IN ('logs', 'active', 'excluded_posts', 'wpedpc_limit', 'movetotrash', 'deletemedia', 'delimgcontent', 'period', 'schedule', 'minmax', 'titledel', 'contentdel', 'cpostypes', 'cposstatuses', 'excluded_ids', 'allcat', 'categories', 'doingcron');
DELETE FROM wp_commentmeta WHERE meta_key IN ('logs', 'active', 'excluded_posts', 'wpedpc_limit', 'movetotrash', 'deletemedia', 'delimgcontent', 'period', 'schedule', 'minmax', 'titledel', 'contentdel', 'cpostypes', 'cposstatuses', 'excluded_ids', 'allcat', 'categories', 'doingcron');

