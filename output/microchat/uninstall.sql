-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('microchat_access_token', 'microchat_embed_widget_style', 'microchat_full_page_widget_style');

