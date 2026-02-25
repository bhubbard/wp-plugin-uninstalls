-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpmandrill', 'wpmandrill-test', 'wpmandrill_notice_shown', 'wpmandrill-stats', 'dashboard_widget_options', 'sewm_activated_on', 'wpmandrill-stats', 'mandrill-stats');

