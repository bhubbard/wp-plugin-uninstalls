-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_markdown_editor_update_notice_interval', 'dark_mode_version', 'dark_mode_install_time', 'wpmde_general', 'wp_markdown_editor_review_notice_interval', 'wp_markdown_editor_affiliate_notice_interval');

