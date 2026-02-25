-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('htga4_secret_key', 'htga4_diagnostic_data_agreed', 'htga4_diagnostic_data_notice', 'woocommerce_cart_redirect_after_add', 'htga4_email', 'htga4_sr_api_key', 'ht_easy_ga4_options', 'ht_easy_ga4_id', 'htga4_settings', 'htga4_shown_milestones', 'htga4_disable_upgrade_notices', 'htga4_api_data', 'htga4_access_token', 'htga4_show_conversion_upgrade_notice', 'htga4_milestone_check');
DELETE FROM wp_options WHERE option_name LIKE '%_htiop';
DELETE FROM wp_options WHERE option_name LIKE '%_htiop_bar';
DELETE FROM wp_options WHERE option_name LIKE '%_htiop_popup';
DELETE FROM wp_options WHERE option_name LIKE '%_htiop_redirect';
DELETE FROM wp_options WHERE option_name LIKE '%_htiop_data';
DELETE FROM wp_options WHERE option_name LIKE '%_htiop_timer';
DELETE FROM wp_options WHERE option_name LIKE '%_htiop_data';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_htga4_server_side_tracked', '_htga4_conversion_tracked', '_htga4_pending_conversion', '_htga4_pending_conversions', 'htga4_dismissed_notices');
DELETE FROM wp_usermeta WHERE meta_key IN ('_htga4_server_side_tracked', '_htga4_conversion_tracked', '_htga4_pending_conversion', '_htga4_pending_conversions', 'htga4_dismissed_notices');
DELETE FROM wp_termmeta WHERE meta_key IN ('_htga4_server_side_tracked', '_htga4_conversion_tracked', '_htga4_pending_conversion', '_htga4_pending_conversions', 'htga4_dismissed_notices');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_htga4_server_side_tracked', '_htga4_conversion_tracked', '_htga4_pending_conversion', '_htga4_pending_conversions', 'htga4_dismissed_notices');

