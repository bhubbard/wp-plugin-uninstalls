-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('MVCP_site_id', 'mv_mcp_version', 'mv_create_version', 'mv_publish_queue', 'mv_queues', 'grow_site_uuid', 'grow_journey_status', 'mv_create_db_version', 'mv_create_reset_term_association_locked', 'mv_create_amazon_provision');
DELETE FROM wp_options WHERE option_name LIKE '%_queue';
DELETE FROM wp_options WHERE option_name LIKE '%_db_version';
DELETE FROM wp_options WHERE option_name LIKE 'mv_create_reset_term_association_locked_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'disable-jtr', 'origin_uri');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', 'disable-jtr', 'origin_uri');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'disable-jtr', 'origin_uri');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'disable-jtr', 'origin_uri');

