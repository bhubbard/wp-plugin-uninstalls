-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('skytake_envato_pro_licence', 'skytake_hide_review_notice', 'skytake_first_notice_hide', 'skytake_do_activation_redirect', 'skytake_upgrade_notice_time', 'selected_coupon', 'skytake_hide_notices');

