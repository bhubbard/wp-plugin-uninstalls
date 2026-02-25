-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nsr_upgrade_message');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpsr_404_notice_dismissed', 'sr_notice_dismissed');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpsr_404_notice_dismissed', 'sr_notice_dismissed');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpsr_404_notice_dismissed', 'sr_notice_dismissed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpsr_404_notice_dismissed', 'sr_notice_dismissed');

