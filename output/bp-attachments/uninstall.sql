-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_bp_attachments_allowed_media_types', '_bp_attachments_can_upload_privately', 'rewrite_rules', 'active_sitewide_plugins');

