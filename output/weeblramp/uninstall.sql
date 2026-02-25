-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('weeblramp_last_amp_suffix', 'weeblramp_last_op_mode', 'weeblramp_last_post_types_hash', 'disqus_forum_url', 'weeblramp_rewrite_rules_flush_required', 'weeblramp_activation_plugin_manager_errors', 'weeblramp_current_stylesheet', 'weeblramp_current_template', 'woocommerce_enable_review_rating', 'wblib_logging_config');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wbamp_enable_amp', 'rating');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wbamp_enable_amp', 'rating');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wbamp_enable_amp', 'rating');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wbamp_enable_amp', 'rating');

