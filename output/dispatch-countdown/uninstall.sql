-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dispatch_countdown_enabled', 'dispatch_countdown_wording', 'dispatch_countdown_monday', 'dispatch_countdown_tuesday', 'dispatch_countdown_wednesday', 'dispatch_countdown_thursday', 'dispatch_countdown_friday', 'dispatch_countdown_saturday', 'dispatch_countdown_sunday', 'dispatch_countdown_blacklist');

