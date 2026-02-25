-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_msnsync_url', 'wp_msnsync_password', 'wp_msnsync_enable', 'wp_msnsync_cook', 'wp_msnsync_publish', 'wp_msnsync_delete', 'wp_msnsync_full', 'wp_msnsync_msg', 'wp_msnsync_title', 'wp_msnsync_more', 'wp_msnsync_id', 'wp_msnsync_exclude');

