-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('linkaupr_donation_qr_image_id', 'linkaupr_options', 'linkaupr_db_version', 'linkaupr_keywords_cache', 'linkaupr_stats_cache');

