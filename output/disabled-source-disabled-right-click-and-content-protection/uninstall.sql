-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('csf_demo_mode', 'jh_disable_post_types', 'jh_disabled_option', 'jh_installation_date', 'jh_review_notice_status');

