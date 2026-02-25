-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('talkm-visibility-options', 'talkm-embed-widget-teenant-key', 'talkm-embed-widget-expire-id', 'talkm-embed-widget-company-id', 'talkm-embed-widget-username-id', 'talkm-embed-widget-password-id', 'talkm-embed-widget-status-id');

