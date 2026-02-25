-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('txtimpact', 'txtimpact-received-messages-version', 'txtimpact-sent-messages-version', 'txtimpact-subscribers-version', 'widget_txtimpact-subscribe');

