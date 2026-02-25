-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('xbooster_social_plugin_snps', 'xbooster_social_plugin_share_ns', 'xbooster_display_options');
DELETE FROM wp_options WHERE option_name LIKE 'xbooster_social_plugin_snp_counter_%';
DELETE FROM wp_options WHERE option_name LIKE 'xbooster_social_plugin_sns_counter_%';

