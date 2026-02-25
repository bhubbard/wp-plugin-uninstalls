-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('metype-account-id', 'metype-primary-color', 'metype-bg-color', 'metype-font-color', 'metype-feed-widget-active', 'metype-bg-id', 'metype-font-id');

