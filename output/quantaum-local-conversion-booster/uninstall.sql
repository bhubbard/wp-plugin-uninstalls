-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('qlcb_settings', 'qlcb_daily_counts', 'qlcb_page_counts', 'qlcb_variant_counts', 'qlcb_do_activation_redirect');

