-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('click5_disable_comments_display_rpc', 'click5_disable_comments_display_api', 'click5_disable_comments_display_globally', 'click5_disable_comments_force_autoupdate', 'click5_disable_comments_activation_date');
DELETE FROM wp_options WHERE option_name LIKE 'click5_disable_comments_authentication_token_%';
DELETE FROM wp_options WHERE option_name LIKE 'click5_disable_comments_display_%';
DELETE FROM wp_options WHERE option_name LIKE 'click5_disable_comments_use_custom_name_%';
DELETE FROM wp_options WHERE option_name LIKE 'click5_disable_comments_custom_name_text_%';
DELETE FROM wp_options WHERE option_name LIKE 'click5_disable_comments_seo_post_type_%';

