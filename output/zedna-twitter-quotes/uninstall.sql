-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('zednatq_username', 'zednatq_share_text', 'zednatq_class', 'zednatq_utm_campaign', 'zednatq_utm_medium', 'zednatq_utm_source', 'zednatq-short-url');

