-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vikwidgetsloader_disabled_widgets', 'vikwidgetsloader_onactivate');

