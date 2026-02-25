-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('postfield-legend', 'postfield-rows', 'category-select', 'default-categoryid', 'prepost-code', 'afterpost-code', 'after-post-msg', 'notify-admin', 'notify-email', 'rc-site-key', 'rc-secret-key');

