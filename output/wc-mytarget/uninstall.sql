-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('imtfw_keeplogs', 'imtfw_disable_notices', 'imtfw_errors', 'imtfw_mytarget_id', 'imtfw_dynamic_remarketing', 'imtfw_feed_id', 'imtfw_code_location', 'active_sitewide_plugins', 'imtfw_version');

