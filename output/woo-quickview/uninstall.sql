-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sp_woo_quick_view_review_notice_dismiss', '_sp_wqvpro_options', 'woo_quick_view_version', 'woo_quick_view_first_version', 'woo_quick_view_activation_date', 'woo_quick_view_db_version', '_sp_wqv_options', 'shapedplugin_offer_banner_dismissed_new_year_2026', 'shapedplugin_offer_banner_dismissed_black_friday_2025', 'wooqv_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'shapedplugin_offer_banner_dismissed_%';

