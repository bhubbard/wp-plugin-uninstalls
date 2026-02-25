-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('default_post_edit_rows');
DELETE FROM wp_options WHERE option_name LIKE '%_insights_optin';
DELETE FROM wp_options WHERE option_name LIKE '%_insights_last_notice';
DELETE FROM wp_options WHERE option_name LIKE '%_insights_last_tracking_time';
DELETE FROM wp_options WHERE option_name LIKE '%_insights_skip';
DELETE FROM wp_options WHERE option_name LIKE '%_insights_previously_skip';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_order_status_default', '_color_status', '_icon_status', '_status_email_title', '_title_status', '_slug_status', '_desc_status', '_bg_color_status');
DELETE FROM wp_usermeta WHERE meta_key IN ('_order_status_default', '_color_status', '_icon_status', '_status_email_title', '_title_status', '_slug_status', '_desc_status', '_bg_color_status');
DELETE FROM wp_termmeta WHERE meta_key IN ('_order_status_default', '_color_status', '_icon_status', '_status_email_title', '_title_status', '_slug_status', '_desc_status', '_bg_color_status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_order_status_default', '_color_status', '_icon_status', '_status_email_title', '_title_status', '_slug_status', '_desc_status', '_bg_color_status');

