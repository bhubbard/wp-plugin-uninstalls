-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('clipredirect_first_onboarding', 'woocommerce_wc_clipredirect_settings', 'clipredirect_migration_v2_done', 'woocommerce_wc_clip_settings', 'clip_first_onboarding');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

