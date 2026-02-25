-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('UGRM_admin_role', 'UGRM_editor_role', 'UGRM_author_role', 'UGRM_contributor_role', 'UGRM_subscriber_role', 'UGRM_return_target_to_HTTPS');

