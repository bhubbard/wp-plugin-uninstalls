-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('current_theme_supports_mas_static_content', 'mas_static_content_queue_flush_rewrite_rules');

