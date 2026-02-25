-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dubeb_notice_dismissed', 'dubeb_disabled_blocks');

