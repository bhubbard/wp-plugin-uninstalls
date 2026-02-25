-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ai-notice-review', 'active_sitewide_plugins', 'widget_ai_widget', 'ai_debug_tracking', 'ai_event_log', 'ai-settings-name-prefix', 'ai-close');
DELETE FROM wp_options WHERE option_name LIKE '_transient_timeout_%';
DELETE FROM wp_options WHERE option_name LIKE 'ai-notice-%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_adinserter_block_exceptions', 'rank_math_primary_category');
DELETE FROM wp_usermeta WHERE meta_key IN ('_adinserter_block_exceptions', 'rank_math_primary_category');
DELETE FROM wp_termmeta WHERE meta_key IN ('_adinserter_block_exceptions', 'rank_math_primary_category');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_adinserter_block_exceptions', 'rank_math_primary_category');

