-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('easy_tag_and_tracking_id_inserter_google_webmaster', 'easy_tag_and_tracking_id_inserter_google_analytical', 'easy_tag_and_tracking_id_inserter_google_tag_manager', 'easy_tag_and_tracking_id_inserter_webmaster', 'easy_tag_and_tracking_id_inserter_analytical');

