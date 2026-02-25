-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('autolink_nofollow', 'autolink_enable_target', 'autolink_target');

