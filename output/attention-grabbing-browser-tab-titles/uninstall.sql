-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('attention_browser_enable_feature', 'attention_browser_title_texts', 'attention_browser_title_time', 'attention_browser_enable_homepage');

