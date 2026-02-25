-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('quickpush_appID', 'quickpush_restApi', 'quickpush_everyone', 'quickpush_pushSegments', 'quickpush_appName', 'quickpush_enableSound', 'quickpush_autoSendTitle', 'quickpush_saveLastMessage');

