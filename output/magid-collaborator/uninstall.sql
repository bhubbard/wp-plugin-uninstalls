-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('magid_collaborator_post_type', 'magid_collaborator_post_status');

