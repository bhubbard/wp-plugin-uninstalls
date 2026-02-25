-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('votd_font_family_settings', 'votd_language', 'votd_background_type', 'votd_activation_date', 'votd_review_notice_delayed_until', 'votd_review_notice_dismissed');

