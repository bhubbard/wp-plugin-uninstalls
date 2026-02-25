-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('incredichat_api_key', 'incredichat_widget_id', 'incredichat_embed_code');

