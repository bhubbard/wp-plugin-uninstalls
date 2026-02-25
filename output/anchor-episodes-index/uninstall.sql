-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jesaei_jun23_sale_transient_deleted', 'jes_anchor_settings', 'jesaei_notice_dismissed', 'jesaei_episodes');

