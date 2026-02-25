-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pandachat_connected', 'pandachat_connection_date', 'pandachat_channel_id', 'pandachat_endpoint', 'pandachat_embed_link', 'pandachat_widget_code', 'pandachat_connection_token', 'pandachat_public_key');

