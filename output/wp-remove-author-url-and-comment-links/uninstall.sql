-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('DAUnCL_settings', 'disable_comment_links_settings');

